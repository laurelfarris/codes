def my_plotter(ax, data1, data2, param_dict):
    '''
    A helper function to make a graph

    Parameters
    ----------
    ax : Axes
        The axes to draw to

    data1 : array
       The x data

    data2 : array
       The y data

    param_dict : dict
       Dictionary of kwargs to pass to ax.plot

    Returns
    -------
    out : list
        list of artists added
    '''
    out = ax.plot(data1, data2, **param_dict)
    return out


''' Use as: '''
fig, ax = plt.subplots(1, 1)
my_plotter(ax, data1, data2, {'marker':'x'})

''' or if you wanted to have 2 sub-plots: '''
fig, (ax1, ax2) = plt.subplots(1, 2)
my_plotter(ax1, data1, data2, {'marker':'x'})
my_plotter(ax2, data3, data4, {'marker':'o'})


''' Ticks and tick labels '''
import matplotlib.ticker.Locator as loc     # Bunch of different kinds
import matplotlib.ticker.Formatter as form  # Bunch of different kinds

majorLocator   = loc('args')
majorFormatter = form('args')

minorLocator   = loc('args')
minorFormatter = form('args')

ax.xaxis.set_major_locator(majorLocator)
ax.xaxis.set_major_formatter(majorFormatter)
ax.xaxis.set_minor_locator(minorLocator)
