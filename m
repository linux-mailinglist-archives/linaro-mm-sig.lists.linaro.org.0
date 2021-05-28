Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E52B4393CD8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 May 2021 08:02:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C9CC60D42
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 May 2021 06:02:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 60B2860B67; Fri, 28 May 2021 06:02:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0263560B3A;
	Fri, 28 May 2021 06:02:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EEDAA60B2E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 May 2021 06:02:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EC87560B3A; Fri, 28 May 2021 06:02:14 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 by lists.linaro.org (Postfix) with ESMTPS id E422A60B2E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 May 2021 06:02:12 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id b25so3035922iot.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 May 2021 23:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZIKsiA6+DMLHlkOcLKlnyxoQnxJIdOFeXeN3ppix/L4=;
 b=WcOyuZpLp8/NgLIQ4nqwWd4KXdbL259MTJbeb0eyFD28gXEt0DV0eLYwdeHVCAgWvH
 nRVo97cISue8EqqhlnBKbpNgJpGyOp4gf01JHA16SSh3N3JoOEPEndI+HqFebcviwWuY
 1VV9DdhXOX7KL7JxIB4w9dK2lE0hxy8rGheT7f79pgZiPFGabXJIorvUGBvllltH2GQp
 MBDig6CjzxpaFpQ4Ry6cy12cEz4Ix37wmmoiAEVV8gjzQdQgxB8SAHC2zklJO/CHWihE
 dv7PxsqNMdICYLWr2hG69BvuuUwxzUJbsv6G1nRnhoDjMIVadgFY7kzeUevyej7rNUHz
 Htmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZIKsiA6+DMLHlkOcLKlnyxoQnxJIdOFeXeN3ppix/L4=;
 b=OmdUUF7MFlXhxNbrjkt8lCIH6Q32NTLqzOV/Wj4hWPIifztSAdbNbD1h0fbe1mXU+Z
 /hoMedHQr1KvKFOoeFWir7URV8eyObcYNb94e3IcMBovgzsR0ivimW8zVPm4aFUi02tK
 FQ6bYfHA7v4rktoiZ7FPFOTJB3FjYtTG8JxT/rF+/EAvseTjALg4ZEqMd8Eb7WaqUxh+
 XPdZAfbaP9jp+s981UgmENaQyW4ufoHetMRPtzHw3YXb7ZCfy65Fx2JjCTuA/IEn4H5D
 mN3zMxjOHtSnAtw5TT150z3HYKIFVt5xvuTIrWKASQPHO54C3JU69BU1HTk0r8eByICN
 VZkA==
X-Gm-Message-State: AOAM531DciT4HrkCa68wCjTC7VC1dGwh9H3xKs7xsXZNzqt/6AQXrV/w
 Y9B0Uw/4QnEDJ1n0GKUVdrVZqS6jDoZMnQPHytY=
X-Google-Smtp-Source: ABdhPJy/7qLyDzEHIvmiA1LxjfP77NXexXSqCA9JNBvDQXHSEFhVrZZWFXtqlefcsUWQ7Go6TECwG6uKcRQzudBsD6g=
X-Received: by 2002:a5d:9e0b:: with SMTP id h11mr5844650ioh.60.1622181732336; 
 Thu, 27 May 2021 23:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
From: Dillon Min <dillon.minfei@gmail.com>
Date: Fri, 28 May 2021 14:01:36 +0800
Message-ID: <CAL9mu0KUwTiVqSymL-8MLTOMe2OuOBNtLecKaJt=EJfUY_drqw@mail.gmail.com>
To: Patrice CHOTARD <patrice.chotard@foss.st.com>,
 pierre-yves.mordret@foss.st.com, 
 alain.volmat@foss.st.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, 
 christian.koenig@amd.com, Michael Turquette <mturquette@baylibre.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 0/4] Fix the i2c/clk bug of stm32 mcu
 platform
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
Cc: Wolfram Sang <wsa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Patrice, Alain,

Could you help to take a look at this patchset, thanks.

This series is the rebase to the newest kernel commit:
88b06399c9c766c283e070b022b5ceafa4f63f19

according to the request from:
https://lore.kernel.org/lkml/ff2bc09d-1a17-50d4-d3ee-16fd3a86d7f1@foss.st.com/

The clk bug affects the kernel bootup on stm32f469-disco board
in case display config(CONFIG_DRM_STM, CONFIG_DRM_STM_DSI,
DRM_PANEL_ORISETECH_OTM8009A)
enabled.

If you want to test clk patch on stm32f429-disco board, the
panel-ilitek-ili9341.c can be
used for that purpose (CONFIG_DRM_STM, DRM_PANEL_ILITEK_ILI9341)

i2c driver patch intent to fix the touch panel driver get data through
i2c bus timeout issue.

Best regards.
Dillon

On Fri, May 14, 2021 at 7:02 PM <dillon.minfei@gmail.com> wrote:
>
> From: Dillon Min <dillon.minfei@gmail.com>
>
> This seriese fix three i2c/clk bug for stm32 f4/f7
> - kernel runing in sdram, i2c driver get data timeout
> - ltdc clk turn off after kernel console active
> - kernel hang in set ltdc clock rate
>
> clk bug found on stm32f429/f469-disco board
>
> Hi Patrice:
> below is the guide to verify the patch:
>
> setup test env with following files(link at below 'files link'):
> [1] u-boot-dtb.bin
> [2] rootfs zip file (used in kernel initramfs)
> [3] u-boot's mkimage to create itb file
> [4] kernel config file
> [5] my itb with-or-without i2c patch
>
> This patch based on kernel commit:
> 88b06399c9c766c283e070b022b5ceafa4f63f19
>
> Note:
> panel-ilitek-ili9341.c is the driver which was submitted last year, but not
> get accepted. it's used to setup touch screen calibration, then test i2c.
>
> create itb file(please correct path of 'data'):
> ./mkimage -f stm32.its stm32.itb
>
> HW setup:
> console:
>        PA9, PA10
>        usart0
>        serial@40011000
>        115200 8n1
>
> -- flash u-boot.bin to stm32f429-disco on PC
> $ sudo openocd -f board/stm32f429discovery.cfg -c \
>   '{PATH-TO-YOUR-UBOOT}/u-boot-dtb.bin 0x08000000 exit reset'
>
> -- setup kernel load bootargs at u-boot
> U-Boot > setenv bootargs 'console=tty0 console=ttySTM0,115200
>                     root=/dev/ram rdinit=/linuxrc loglevel=8 fbcon=rotate:2'
> U-Boot > loady;bootm
> (download stm32.dtb or your kernel with itb format, or download zImage, dtb)
>
> -- setup ts_calibrate running env on stm32f429-disco
> / # export TSLIB_CONFFILE=/etc/ts.conf
> / # export TSLIB_TSDEVICE=/dev/input/event0
> / # export TSLIB_CONSOLEDEVICE=none
> / # export TSLIB_FBDEVICE=/dev/fb0
>
> -- clear screen
> / # ./fb
>
> -- run ts_calibrate
> / # ts_calibrate
> (you can calibrate touchscreen now, and get below errors)
>
> [  113.942087] stmpe-i2c0-0041: failed to read regs 0x52: -110
> [  114.063598] stmpe-i2c 0-0041: failed to read reg 0x4b: -16
> [  114.185629] stmpe-i2c 0-0041: failed to read reg 0x40: -16
> [  114.307257] stmpe-i2c 0-0041: failed to write reg 0xb: -16
>
> ...
> with i2c patch applied, you will find below logs:
>
> RAW---------------------> 3164 908 183 118.110884
> TS_READ_RAW----> x = 3164, y =908, pressure = 183
> RAW---------------------> 3166 922 126 118.138946
> TS_READ_RAW----> x = 3166, y = 922, pressure = 126
> ....
>
> files link:
> https://drive.google.com/drive/folders/1qNbjChcB6UGtKzne2F5x9_WG_sZFyo3o?usp=sharing
>
>
>
>
> Dillon Min (4):
>   drm/panel: Add ilitek ili9341 panel driver
>   i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
>   clk: stm32: Fix stm32f429's ltdc driver hang in set clock rate
>   clk: stm32: Fix ltdc's clock turn off by clk_disable_unused() after
>     kernel startup
>
>  drivers/clk/clk-stm32f4.c                    |   10 +-
>  drivers/gpu/drm/panel/Kconfig                |   12 +
>  drivers/gpu/drm/panel/Makefile               |    1 +
>  drivers/gpu/drm/panel/panel-ilitek-ili9341.c | 1285 ++++++++++++++++++++++++++
>  drivers/i2c/busses/i2c-stm32f4.c             |   12 +-
>  5 files changed, 1310 insertions(+), 10 deletions(-)
>  create mode 100755 drivers/gpu/drm/panel/panel-ilitek-ili9341.c
>
> --
> 2.7.4
>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
