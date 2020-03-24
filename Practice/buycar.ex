defmodule Buycar do
  def nb_months(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth) do
    nb_months(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth, 0, 0)
  end

  def nb_months(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth, month, saving) do
    cond do
      startPriceOld + saving < startPriceNew ->
        cond do
          rem(month, 2) == 0 ->
            nb_months(
              startPriceOld - startPriceOld * (percentLossByMonth / 100),
              startPriceNew - startPriceNew * (percentLossByMonth / 100),
              savingperMonth,
              percentLossByMonth + 0.5,
              month + 1,
              saving + savingperMonth
            )

          rem(month, 2) == 1 ->
            nb_months(
              startPriceOld - startPriceOld * (percentLossByMonth / 100),
              startPriceNew - startPriceNew * (percentLossByMonth / 100),
              savingperMonth,
              percentLossByMonth,
              month + 1,
              saving + savingperMonth
            )
        end

      startPriceOld + saving >= startPriceNew ->
        {month, trunc(startPriceOld + saving - startPriceNew)}
    end
  end
end
