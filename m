Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 981633972E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jun 2021 13:59:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 336D360EFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jun 2021 11:59:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC9E260CFC; Tue,  1 Jun 2021 11:59:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFA2460E5F;
	Tue,  1 Jun 2021 11:59:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D4F3360CB2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Jun 2021 11:59:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D2C1560E5F; Tue,  1 Jun 2021 11:59:22 +0000 (UTC)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by lists.linaro.org (Postfix) with ESMTPS id CA0BD60CB2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Jun 2021 11:59:20 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id x18so7074702ila.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Jun 2021 04:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7h+A8aEDUOIPJ0mvlv22w1DuGIkLT4pGU/4T1UhDmms=;
 b=j8OR4Sn96SBx/RobEUIz9aB1+A6WnyGyB/Nq9pQVaWc2TGT3igc9cVZ+6RCDiG/1Vt
 91J+WmrmrdtltcMDhPWPILb7dlfZbG9O+aP9c+Ex4LSQ7aOq4Zgy9/KjMEDiH+JviTUz
 RtxQu/DrawhynBcoCvnB61AguKMnM6UbFgQ02FxqgF8I4EwELZp6XdlPBxOnP6Wg8PnG
 UfHsMrmsJE4M482D3FI+fxogHtZQ9LnCApgrZSs+6hzfp8bsw/5jdeXzDFcqddcXVnvn
 dPuxBoMvNelA28r+iqN6V23EBTb2nroadn5t3qfUy5mxqAmNGqZPvx7r/hf/6PUWmzOG
 moRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7h+A8aEDUOIPJ0mvlv22w1DuGIkLT4pGU/4T1UhDmms=;
 b=F5FBG3WwIRcjqREuPHpmHukp3/VO1Wb/dnyS5dpbVIElrZHkhaxFzdFVVNXE6FFyjV
 VaPSFZqygMM5b+Vaj8CubT6yYm9i0fEbJjAjIC9ix/LfunlIv6AfEfq0KNLSxe2CzOu1
 icQdO1uK2D/vB4t1ZQEZ3Hoc4xIO/9P+xzTExFWjvTOUPpqJHzc5GR8FE2YY46slPM2n
 QwduBDoylBMSp7+ZvpLlwDkuYlVyKUTGpqzFYuRoOcFdv7aQHVIVafwJyo8jOaWvE1e8
 Yza5b924wLIrETIBkprbt5TrW1jbRyL8rsYVb/2Gls3BpGHhADycCwxTPyf1R/Nuakfn
 RDVA==
X-Gm-Message-State: AOAM533iBik+RnQb8rMu7z8wXOdogawxM1ZGYuU0+vbRjfaYWcRgUy70
 VqFbGvrdIlwS7QAmqsyofBM5i59XS5+zLOLQZoQ=
X-Google-Smtp-Source: ABdhPJyVH+Rz58jeThjRqbHxM68F5xsZlanLSn0RHHf58g9eo4S828VK2JlD7ENXVa+FmPR8K/Dy/SG+qLvsgPGZN4I=
X-Received: by 2002:a05:6e02:1561:: with SMTP id
 k1mr21593650ilu.218.1622548760336; 
 Tue, 01 Jun 2021 04:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
 <1620990152-19255-3-git-send-email-dillon.minfei@gmail.com>
 <f30d5a1d-5acc-e756-5883-6c3d0173d643@foss.st.com>
In-Reply-To: <f30d5a1d-5acc-e756-5883-6c3d0173d643@foss.st.com>
From: Dillon Min <dillon.minfei@gmail.com>
Date: Tue, 1 Jun 2021 19:58:44 +0800
Message-ID: <CAL9mu0+ccyCUFoRP7ypNmS9TUCh_A=y0uNxgF9gb-UbB3C18Cw@mail.gmail.com>
To: Patrice CHOTARD <patrice.chotard@foss.st.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] i2c: stm32f4: Fix stmpe811 get xyz
 data timeout issue
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, pierre-yves.mordret@foss.st.com,
 linux-i2c@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 alain.volmat@foss.st.com, christian.koenig@amd.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Patrice, Pierre-Yves, Alain

On Tue, Jun 1, 2021 at 7:43 PM Patrice CHOTARD
<patrice.chotard@foss.st.com> wrote:
>
> Hi Dillon
>
> On 5/14/21 1:02 PM, dillon.minfei@gmail.com wrote:
> > From: Dillon Min <dillon.minfei@gmail.com>
> >
> > As stm32f429's internal flash is 2Mbytes and compiled kernel
> > image bigger than 2Mbytes, so we have to load kernel image
> > to sdram on stm32f429-disco board which has 8Mbytes sdram space.
> >
> > based on above context, as you knows kernel running on external
> > sdram is more slower than internal flash. besides, we need read 4
> > bytes to get touch screen xyz(x, y, pressure) coordinate data in
> > stmpe811 interrupt.
> >
> > so, in stm32f4_i2c_handle_rx_done, as i2c read slower than running
> > in xip mode, have to adjust 'STOP/START bit set position' from last
> > two bytes to last one bytes. else, will get i2c timeout in reading
> > touch screen coordinate.
> >
> > to not bring in side effect, introduce IIC_LAST_BYTE_POS to support xip
> > kernel or zImage.
> >
> > Fixes: 62817fc8d282 ("i2c: stm32f4: add driver")
> > Link: https://lore.kernel.org/lkml/1591709203-12106-5-git-send-email-dillon.minfei@gmail.com/
> > Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
> > ---
> >  drivers/i2c/busses/i2c-stm32f4.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
> > index 4933fc8ce3fd..2e41231b9037 100644
> > --- a/drivers/i2c/busses/i2c-stm32f4.c
> > +++ b/drivers/i2c/busses/i2c-stm32f4.c
> > @@ -93,6 +93,12 @@
> >  #define STM32F4_I2C_MAX_FREQ         46U
> >  #define HZ_TO_MHZ                    1000000
> >
> > +#if !defined(CONFIG_MMU) && !defined(CONFIG_XIP_KERNEL)
> > +#define IIC_LAST_BYTE_POS 1
> > +#else
> > +#define IIC_LAST_BYTE_POS 2
> > +#endif
> > +
> >  /**
> >   * struct stm32f4_i2c_msg - client specific data
> >   * @addr: 8-bit slave addr, including r/w bit
> > @@ -439,7 +445,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
> >       int i;
> >
> >       switch (msg->count) {
> > -     case 2:
> > +     case IIC_LAST_BYTE_POS:
> >               /*
> >                * In order to correctly send the Stop or Repeated Start
> >                * condition on the I2C bus, the STOP/START bit has to be set
> > @@ -454,7 +460,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
> >               else
> >                       stm32f4_i2c_set_bits(reg, STM32F4_I2C_CR1_START);
> >
> > -             for (i = 2; i > 0; i--)
> > +             for (i = IIC_LAST_BYTE_POS; i > 0; i--)
> >                       stm32f4_i2c_read_msg(i2c_dev);
> >
> >               reg = i2c_dev->base + STM32F4_I2C_CR2;
> > @@ -463,7 +469,7 @@ static void stm32f4_i2c_handle_rx_done(struct stm32f4_i2c_dev *i2c_dev)
> >
> >               complete(&i2c_dev->complete);
> >               break;
> > -     case 3:
> > +     case (IIC_LAST_BYTE_POS+1):
> >               /*
> >                * In order to correctly generate the NACK pulse after the last
> >                * received data byte, we have to enable NACK before reading N-2
> >
>
> I tested this patch on STM32F429-Disco, it fixes the issue described by Dillon.
> But i think it's not a good idea to make usage of #if !defined(CONFIG_MMU) && !defined(CONFIG_XIP_KERNEL)
> inside the driver code.

Hi Patrice,
Thanks for your time.

How about introducing a dts node for this purpose.
like
stm32-i2c,last-byte-pos = <1>;
or
stm32-i2c,last-byte-pos = <2>;

if not set, the default value is 2

Best Regards
Dillon

>
> Pierre-Yves, Alain, as i am not I2C expert, can you have a look at this patch and propose another solution
> to fix the original issue described by Dillon ?
>
> Thanks
> Patrice
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
