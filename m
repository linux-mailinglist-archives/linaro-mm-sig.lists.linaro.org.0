Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D46093919ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0965B618A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EABC561391; Wed, 26 May 2021 14:20:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0F67618F4;
	Wed, 26 May 2021 14:20:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 22E886049D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 11:02:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09D5E60B20; Fri, 14 May 2021 11:02:58 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by lists.linaro.org (Postfix) with ESMTPS id E9A5160B20
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 11:02:55 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id i5so19112793pgm.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 04:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JbtmVlFegu/yEOkgo/QoQ3O9Y1pQZgcP2L+SCuXVqL0=;
 b=fp1v09Fw8o/YJrDM0ISr4sBVIAh5N8cQ5ede5YPsHlfph256kamuUPI8xN6w8baQ6j
 TWvGKzsgItfyZDBLU8d6pnm3TN586CAJzzDJd8uYY7dw3T/Hs6xwnpPalxEzPvFgKrMJ
 TyEkVpkZy929j0ARWFkghwfAs3M5tDYY+YD5RvLqQqV8LuDWyf1UKNE9guc3vJzuUv5F
 ILa89dPd6jLhdF7+X/czAmaH1ZwO2aqqG7vahRqb9QZHzECaSRN4Xl8gurEGJzjx8AuQ
 485rHEglAlqGca8kkJWVpC4jgvV4eorjccCXgyjRLT0hnJmlOqLBCt8pXJ4m2R+q3E50
 Aarg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JbtmVlFegu/yEOkgo/QoQ3O9Y1pQZgcP2L+SCuXVqL0=;
 b=lx+qcs4hsBtJWsZGMs8rmrjh9loERc+S59w9hsw4K2+fG+nlb3wdnVajNOwOPKiQ3Q
 FBF8N5RkGaMOUNxPTP9b8PE35sAungM6YG4Bs+fDgNm4SZw+7RD4iCPg+Ljr5uyhfYO8
 ODvczA5nl7x5/IYYgVcUrnfni0C83AALxmf3jyUqWw15YHMp6k5VwQs/ItNO4Y/4JjCv
 v2O98kQvx3OdDNcnpCzM+1uE2UaUh2cyaCbmslGfZZ7iyBWDXL067prpDLqlN61XujFI
 ia7ojp1+ShAmQOIZxiXHZrr7cbjXW6LoHy1O4eAUkMZtKO8/oOjMHu4KZc0O2Rj9rZvH
 s71g==
X-Gm-Message-State: AOAM5308mthzgXL8MtbgLZR4toiR2IBj9ttihe3skisZwKAZ21O3Zupg
 6XbLc2xSJVMdG198G20Z5+w=
X-Google-Smtp-Source: ABdhPJxqI2KKH4oJ6y3qHsv0zSC7+p7HNCpz1OvYKNLOB5TRihvLmt8HQDIN8MLwI+mNHsDbnB1E5A==
X-Received: by 2002:a62:644d:0:b029:2d1:1c84:dae5 with SMTP id
 y74-20020a62644d0000b02902d11c84dae5mr8511892pfb.77.1620990175080; 
 Fri, 14 May 2021 04:02:55 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.103.165])
 by smtp.gmail.com with ESMTPSA id 202sm4193402pgg.59.2021.05.14.04.02.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 May 2021 04:02:54 -0700 (PDT)
From: dillon.minfei@gmail.com
To: patrice.chotard@foss.st.com, pierre-yves.mordret@foss.st.com,
 alain.volmat@foss.st.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com, mturquette@baylibre.com
Date: Fri, 14 May 2021 19:02:32 +0800
Message-Id: <1620990152-19255-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
References: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 4/4] clk: stm32: Fix ltdc's clock turn off
 by clk_disable_unused() after kernel startup
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
Cc: sboyd@kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org,
 Dillon Min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Dillon Min <dillon.minfei@gmail.com>

stm32's clk driver register two ltdc gate clk to clk core by
clk_hw_register_gate() and clk_hw_register_composite()

first: 'stm32f429_gates[]', clk name is 'ltdc', which no user to use.
second: 'stm32f429_aux_clk[]', clk name is 'lcd-tft', used by ltdc driver

both of them point to the same offset of stm32's RCC register. after
kernel enter console, clk core turn off ltdc's clk as 'stm32f429_gates[]'
is no one to use. but, actually 'stm32f429_aux_clk[]' is in use.

Fixes: daf2d117cbca ("clk: stm32f4: Add lcd-tft clock")
Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Link: https://lore.kernel.org/linux-arm-kernel/1590564453-24499-7-git-send-email-dillon.minfei@gmail.com/
---
 drivers/clk/clk-stm32f4.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 42ca2dd86aea..f4156a8a6041 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,6 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -211,7 +210,6 @@ static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 };
 
 static const struct stm32f4_gate_data stm32f746_gates[] __initconst = {
@@ -286,7 +284,6 @@ static const struct stm32f4_gate_data stm32f746_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 23,	"sai2",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 };
 
 static const struct stm32f4_gate_data stm32f769_gates[] __initconst = {
@@ -364,7 +361,6 @@ static const struct stm32f4_gate_data stm32f769_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 23,	"sai2",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 30,	"mdio",		"apb2_div" },
 };
 
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
