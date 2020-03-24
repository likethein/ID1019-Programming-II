defmodule Sort do
  #########################################################################
  ############################## Insert sort###############################
  def insert(element, []) do
    [element]
  end

  def insert(element, [h | t]) do
    cond do
      element > h -> [h | insert(element, t)]
      element < h -> [element | [h | t]]
    end
  end

  def isort([]) do
    []
  end

  def isort([h | t]) do
    insert(h, isort(t))
  end

  #########################################################################
  ###################### Tail recursive insert sort########################

  def isortac([]) do
    []
  end

  def isortac(list) do
    isortac(list, [])
  end

  def isortac([h | t], sorted) do
    isortac(t, insert(h, sorted))
  end

  def isortac([], sorted) do
    sorted
  end

  #########################################################################
  ######################## Merge sort#######################################

  def msort([]) do
    []
  end

  def msort([x]) do
    [x]
  end

  def msort(l) do
    {l1, l2} = msplit(l, [], [])
    merge(msort(l1), msort(l2))
  end

  def merge([], l2) do
    l2
  end

  def merge(l1, []) do
    l1
  end

  def merge([x1 | l1], [x2 | _] = l2) when x1 < x2 do
    [x1 | merge(l1, l2)]
  end

  def merge(l1, [x2 | l2]) do
    [x2 | merge(l1, l2)]
  end

  def msplit([], l1, l2) do
    {l1, l2}
  end

  def msplit([x | tail], l1, l2) do
    msplit(tail, [x | l2], l1)
  end

  #########################################################################
  ######################## Quick sort######################################
  def qsort([]) do
    []
  end

  def qsort([p | l]) do
    {list1, list2} = qsplit(p, l, [], [])
    small = qsort(list1)
    large = qsort(list2)
    append(small, [p | large])
  end

  def qsplit(_, [], small, large) do
    {small, large}
  end

  def qsplit(p, [h | t], small, large) do
    if h < p do
      qsplit(p, t, [h | small], large)
    else
      qsplit(p, t, small, [h | large])
    end
  end

  def append(list1, list2) do
    case list1 do
      [] -> list2
      [h | t] -> [h | append(t, list2)]
    end
  end

  #########################################################################
end
