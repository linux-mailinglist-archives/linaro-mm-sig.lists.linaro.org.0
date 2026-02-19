Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIWsGlTIlmkGmwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 09:22:44 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A112C15D08E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 09:22:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B833401C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 08:22:42 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by lists.linaro.org (Postfix) with ESMTPS id 7E3293F803
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:22:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=rKPMGFjc;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.66 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso5806345e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 00:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771489359; x=1772094159; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0D6P+pMy0FNkLSD5nYId8+lNUqZXXTENXB4evIwBeIY=;
        b=rKPMGFjcU3KUdB8r40Dbo8qwSw3dHHxPEyLVE2il8dd16smQMR2uwL1dS8GqDs5b21
         QGO5AjyBQHuJRyc5ILOO3J3thGvbbXl+GUSdKdPGHQrrcYxk0xyAKDGGKDBG45QLB1Gl
         R39TyWRATHC0xhw1cQXaRCE2roPLLgTQoJMZLrf5+gX0fgmmWAkLuIbWNp65ttFEy5eh
         f+wMVgIkLVn+Wi+yZsOrcuFHk472n9sxuInl4otpFQYnSxKrdA0YOn+YaCAx20jJ4GlM
         BoU/U12yW1/h6W9Be719JNUocHAGq5/UGkDzL+DY6YrIGsbB/5oF2e+bqmvAf3pj3kNV
         c8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771489359; x=1772094159;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D6P+pMy0FNkLSD5nYId8+lNUqZXXTENXB4evIwBeIY=;
        b=mE6iM/0fgqqkdHmJ026ATyYey8PJ1puURLmarjgB9ic9zSF5AU6EaaKSDYii18CZqT
         3hMOPBaQH/CGJC2cBAN3cA8z0fZKWXJi7CvYVN61pUA3lhLd/hfVk6OzcX2ROvNbMzZp
         SVo1b0YWEciG4HvYy8b9TcfAGNP7C37WQjAL2lw30U567QWcmrit5LfeAEwS6Y801puZ
         QhZ2lKqYpnuPhxLCiXcUdT7CLLqbPOTbAU8+VXVviZ5+NPJDSbXDInYndo8hCmwJLIkQ
         8jcJE1IweOwemC70o3HP5jx9+rsjZNFqJiuWpgjGQOkwaD6WDfRDKjWVHyD5KAcG0hL7
         FfEA==
X-Forwarded-Encrypted: i=1; AJvYcCUu3ji7UrAO7wDZFKIonvXOGoWslYIQom5N1J8mYwxmU4ouJvEmYU1YAXs6ZZIF5Am65gUFOUDxODpZ2xGE@lists.linaro.org
X-Gm-Message-State: AOJu0Yx04dXq1ma26CMVwEMNzzNpYHpd8awc3riX3s9k+6ZJQC7s+H57
	mlr4ckfPFe0xDtKhdciTxOd+LA+v0ozqdcMVOkMkITROHt0w4dBIZU+VozYbvbVsNwhrkw==
X-Gm-Gg: AZuq6aLUIvJWj5/FxG6sMSnpRQQ1nYVgH68+FmoSVoBRl4GwfJvc0nDrEvXuiPkMUqT
	G4dNLtu9roqGxB2SmGC94oybwl8b23LG5/qYOw1ayMGQkfJtTDGjHTiIp5XnZTrMXQScYUNiwS0
	waa4LXJW7DyvuBCnGR8P9zRBLHn2XRnYCiICi3aC61b/7xdOAjpJfXpqEhmD4qERONP8Dorwf3E
	ECZvp9j2Vcc5Q50D/gC1E+5wlMRkxtR1xzAvwYaq5EFhxfWK0AQuLGb1SVzp+WefpCbQHvSiaK1
	ONwit+JE3EKVFPkn+PdSGirIYvHO8/uqnRMK8MVG9woxDVyzuciFORJmKMGKn1RH7WixCo3yp5n
	nUCmxIHqSLPzHMg+IH+lK1NeyISZjb04c7OcEJ8UbSfvVjUoUlhlLdaxY6TmTPXAqBXQ+Bn7DLY
	dukxGAWZjeBMIeAzVwCNM/1HvSPRI3
X-Received: by 2002:a05:600c:870b:b0:483:6f37:1b56 with SMTP id 5b1f17b1804b1-48371051b15mr358346635e9.10.1771489359323;
        Thu, 19 Feb 2026 00:22:39 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839f986118sm12865185e9.21.2026.02.19.00.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 00:22:38 -0800 (PST)
Date: Thu, 19 Feb 2026 11:22:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Larisa Grigore <larisa.grigore@oss.nxp.com>,
	gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, chester62515@gmail.com,
	cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
	stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com
Message-ID: <202602171109.6YSFXcJ3-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216150205.212318-13-larisa.grigore@oss.nxp.com>
X-Spamd-Bar: --
Message-ID-Hash: JEHY7ORBNPEVNDHTIYM4GVJ3SHHOP3Q4
X-Message-ID-Hash: JEHY7ORBNPEVNDHTIYM4GVJ3SHHOP3Q4
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Larisa Grigore <larisa.grigore@oss.nxp.com>, Radu Pirea <radu-nicolae.pirea@nxp.com>, Phu Luu An <phu.luuan@nxp.com>, Js Ha <js.ha@nxp.com>, Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/13] serial: linflexuart: Add DMA support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEHY7ORBNPEVNDHTIYM4GVJ3SHHOP3Q4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[lists.linux.dev,oss.nxp.com,linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	NEURAL_SPAM(0.00)[0.419];
	DKIM_TRACE(0.00)[linaro.org:-];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,01.org:url,intel.com:mid,intel.com:email,git-scm.com:url]
X-Rspamd-Queue-Id: A112C15D08E
X-Rspamd-Action: no action

Hi Larisa,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Larisa-Grigore/serial-linflexuart-Fix-locking-in-set_termios/20260216-231403
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-testing
patch link:    https://lore.kernel.org/r/20260216150205.212318-13-larisa.grigore%40oss.nxp.com
patch subject: [PATCH 12/13] serial: linflexuart: Add DMA support
config: i386-randconfig-141-20260217 (https://download.01.org/0day-ci/archive/20260217/202602171109.6YSFXcJ3-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
smatch version: v0.5.0-8994-gd50c5a4c

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202602171109.6YSFXcJ3-lkp@intel.com/

smatch warnings:
drivers/tty/serial/fsl_linflexuart.c:1441 linflex_probe() warn: missing unwind goto?

vim +1441 drivers/tty/serial/fsl_linflexuart.c

09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1377  static int linflex_probe(struct platform_device *pdev)
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1378  {
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1379  	struct device_node *np = pdev->dev.of_node;
1d3f5f07fafc71 Radu Pirea           2026-02-16  1380  	struct linflex_port *lfport;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1381  	struct uart_port *sport;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1382  	struct resource *res;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1383  	int ret;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1384  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1385  	lfport = devm_kzalloc(&pdev->dev, sizeof(*lfport), GFP_KERNEL);
1d3f5f07fafc71 Radu Pirea           2026-02-16  1386  	if (!lfport)
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1387  		return -ENOMEM;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1388  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1389  	sport = &lfport->port;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1390  	sport->dev = &pdev->dev;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1391  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1392  	lfport->dma_tx_chan = dma_request_chan(sport->dev, "tx");
0b34325c5f79f1 Larisa Grigore       2026-02-16  1393  	if (IS_ERR(lfport->dma_tx_chan)) {
0b34325c5f79f1 Larisa Grigore       2026-02-16  1394  		ret = PTR_ERR(lfport->dma_tx_chan);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1395  		if (ret == -EPROBE_DEFER)
0b34325c5f79f1 Larisa Grigore       2026-02-16  1396  			return ret;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1397  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1398  		dev_info(sport->dev,
0b34325c5f79f1 Larisa Grigore       2026-02-16  1399  			 "DMA tx channel request failed, operating without tx DMA %ld\n",
0b34325c5f79f1 Larisa Grigore       2026-02-16  1400  			 PTR_ERR(lfport->dma_tx_chan));
0b34325c5f79f1 Larisa Grigore       2026-02-16  1401  		lfport->dma_tx_chan = NULL;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1402  	}
0b34325c5f79f1 Larisa Grigore       2026-02-16  1403  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1404  	lfport->dma_rx_chan = dma_request_chan(sport->dev, "rx");
0b34325c5f79f1 Larisa Grigore       2026-02-16  1405  	if (IS_ERR(lfport->dma_rx_chan)) {
0b34325c5f79f1 Larisa Grigore       2026-02-16  1406  		ret = PTR_ERR(lfport->dma_rx_chan);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1407  		if (ret == -EPROBE_DEFER) {
0b34325c5f79f1 Larisa Grigore       2026-02-16  1408  			dma_release_channel(lfport->dma_tx_chan);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1409  			return ret;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1410  		}
0b34325c5f79f1 Larisa Grigore       2026-02-16  1411  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1412  		dev_info(sport->dev,
0b34325c5f79f1 Larisa Grigore       2026-02-16  1413  			 "DMA rx channel request failed, operating without rx DMA %ld\n",
0b34325c5f79f1 Larisa Grigore       2026-02-16  1414  			 PTR_ERR(lfport->dma_rx_chan));
0b34325c5f79f1 Larisa Grigore       2026-02-16  1415  		lfport->dma_rx_chan = NULL;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1416  	}
1d3f5f07fafc71 Radu Pirea           2026-02-16  1417  
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1418  	ret = of_alias_get_id(np, "serial");
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1419  	if (ret < 0) {
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1420  		dev_err(&pdev->dev, "failed to get alias id, errno %d\n", ret);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1421  		goto linflex_probe_free_dma;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1422  	}
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1423  	if (ret >= UART_NR) {
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1424  		dev_err(&pdev->dev, "driver limited to %d serial ports\n",
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1425  			UART_NR);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1426  		ret = -ENOMEM;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1427  		goto linflex_probe_free_dma;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1428  	}
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1429  
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1430  	sport->line = ret;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1431  
8c6d7e5fd50b45 Yangtao Li           2023-07-12  1432  	sport->membase = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1433  	if (IS_ERR(sport->membase)) {
0b34325c5f79f1 Larisa Grigore       2026-02-16  1434  		ret = PTR_ERR(sport->membase);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1435  		goto linflex_probe_free_dma;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1436  	}
8c6d7e5fd50b45 Yangtao Li           2023-07-12  1437  	sport->mapbase = res->start;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1438  
4e8da86fc1f767 Zhang Shurong        2023-08-26  1439  	ret = platform_get_irq(pdev, 0);
4e8da86fc1f767 Zhang Shurong        2023-08-26  1440  	if (ret < 0)
4e8da86fc1f767 Zhang Shurong        2023-08-26 @1441  		return ret;

No clean up?

4e8da86fc1f767 Zhang Shurong        2023-08-26  1442  
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1443  	sport->iotype = UPIO_MEM;
4e8da86fc1f767 Zhang Shurong        2023-08-26  1444  	sport->irq = ret;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1445  	sport->ops = &linflex_pops;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1446  	sport->flags = UPF_BOOT_AUTOCONF;
4151bbed79f98b Dmitry Safonov       2019-12-13  1447  	sport->has_sysrq = IS_ENABLED(CONFIG_SERIAL_FSL_LINFLEXUART_CONSOLE);
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1448  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1449  	ret = linflex_init_clk(lfport);
1d3f5f07fafc71 Radu Pirea           2026-02-16  1450  	if (ret)
0b34325c5f79f1 Larisa Grigore       2026-02-16  1451  		goto linflex_probe_free_dma;
1d3f5f07fafc71 Radu Pirea           2026-02-16  1452  
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1453  	linflex_ports[sport->line] = sport;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1454  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1455  	platform_set_drvdata(pdev, lfport);
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1456  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1457  	ret = uart_add_one_port(&linflex_reg, sport);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1458  	if (ret) {
1d3f5f07fafc71 Radu Pirea           2026-02-16  1459  		clk_bulk_disable_unprepare(LINFLEX_CLK_NUM, lfport->clks);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1460  		goto linflex_probe_free_dma;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1461  	}
0b34325c5f79f1 Larisa Grigore       2026-02-16  1462  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1463  	return 0;
0b34325c5f79f1 Larisa Grigore       2026-02-16  1464  
0b34325c5f79f1 Larisa Grigore       2026-02-16  1465  linflex_probe_free_dma:
0b34325c5f79f1 Larisa Grigore       2026-02-16  1466  	if (lfport->dma_tx_chan)
0b34325c5f79f1 Larisa Grigore       2026-02-16  1467  		dma_release_channel(lfport->dma_tx_chan);
0b34325c5f79f1 Larisa Grigore       2026-02-16  1468  	if (lfport->dma_rx_chan)
0b34325c5f79f1 Larisa Grigore       2026-02-16  1469  		dma_release_channel(lfport->dma_rx_chan);
1d3f5f07fafc71 Radu Pirea           2026-02-16  1470  
1d3f5f07fafc71 Radu Pirea           2026-02-16  1471  	return ret;
09864c1cdf5c53 Stefan-gabriel Mirea 2019-08-09  1472  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
