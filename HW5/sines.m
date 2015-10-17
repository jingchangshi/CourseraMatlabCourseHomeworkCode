function [ Vector1, Vector2, SumVector ] = sines( varargin )

if nargin == 0
    PtsNMAX = 1000;
    Amplitude = 1;
    PeriodNMAX1 = 100;
    PeriodNMAX2 = PeriodNMAX1 * (1 + 0.05);
elseif nargin == 1
    PtsNMAX = varargin{1};
    Amplitude = 1;
    PeriodNMAX1 = 100;
    PeriodNMAX2 = PeriodNMAX1 * (1 + 0.05);
elseif nargin == 2
    PtsNMAX = varargin{1};
    Amplitude = varargin{2};
    PeriodNMAX1 = 100;
    PeriodNMAX2 = PeriodNMAX1 * (1 + 0.05);
elseif nargin == 3
    PtsNMAX = varargin{1};
    Amplitude = varargin{2};
    PeriodNMAX1 = varargin{3};
    PeriodNMAX2 = PeriodNMAX1 * (1 + 0.05);
elseif nargin == 4
    PtsNMAX = varargin{1};
    Amplitude = varargin{2};
    PeriodNMAX1 = varargin{3};
    PeriodNMAX2 = varargin{4};
end
BaseVector1 = linspace(0, PeriodNMAX1*2*pi, PtsNMAX);
Vector1 = Amplitude * sin(BaseVector1);
BaseVector2 = linspace(0, PeriodNMAX2*2*pi, PtsNMAX);
Vector2 = Amplitude * sin(BaseVector2);
SumVector = Vector1 + Vector2;
end

