Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E32184760DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Dec 2021 19:37:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7CDC62D45
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Dec 2021 18:37:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B4DF662D41; Wed, 15 Dec 2021 18:37:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29F3760B6E;
	Wed, 15 Dec 2021 18:37:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05BD760A79
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 18:37:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 018A560B6E; Wed, 15 Dec 2021 18:37:34 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id EBFC860A79
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 18:37:32 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 n104-20020a9d2071000000b005799790cf0bso26030487ota.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 10:37:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1SeB84S69bpsa1PObCsguFCuIUK1jo7w+NpM6xYNgYQ=;
 b=CAe3UW0RYjHFqbq1qeiUk5K9ffo3iA50XQVl4SKZVcqwdlSIHdTuocfn98jVQsWtHV
 ZCt0mIZXWt8NmrlF2P+z7Tgpzvcjsb8Yu4b//JdYTgu8UMzEEu4hhxL1ogCHAnqBtClj
 GEqS/RT9iSe1hEMjzqsDUUfX7nfpmVzsEpG06DFV7VX/w2SAaCJGLjN0MGmFIwiqa/Ab
 2XOMWXOIUJcnnX5yMFIMC2N1PyE8SXotg25fSJaI1GFcsvMvpfBJj8jVofKOf1u9PDdG
 mBDrjjl4cJcWDdntnSRg+RjIPsS84IsWpQMAgzzqr4ftHw89rL/ObSVD8XOlJESUqQTl
 aUfw==
X-Gm-Message-State: AOAM5335+s0x1TQPClSWYoUhuyR/ER3/+1oEyXu1rN9WO5vCVQUEOkL4
 Xb8iikjarHmZT1PihBRerg==
X-Google-Smtp-Source: ABdhPJwjTsE+G4GlNjpU1uHHk79mPFLVzI/DID9ltvFzWeKtA+cshnlVlgrxc/OfhJkOkys0N0IFIw==
X-Received: by 2002:a05:6830:1ddd:: with SMTP id
 a29mr9883407otj.311.1639593451526; 
 Wed, 15 Dec 2021 10:37:31 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b22sm474096oib.41.2021.12.15.10.37.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 10:37:30 -0800 (PST)
Received: (nullmailer pid 1614869 invoked by uid 1000);
 Wed, 15 Dec 2021 18:37:29 -0000
Date: Wed, 15 Dec 2021 12:37:29 -0600
From: Rob Herring <robh@kernel.org>
To: Akhil R <akhilrajeev@nvidia.com>
Message-ID: <Ybo16aNZ5MBW6XY6@robh.at.kernel.org>
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
 <1639062321-18840-2-git-send-email-akhilrajeev@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1639062321-18840-2-git-send-email-akhilrajeev@nvidia.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dt-bindings: i2c: tegra: Add SMBus
 feature properties
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, jonathanh@nvidia.com,
 linaro-mm-sig@lists.linaro.org, andy.shevchenko@gmail.com,
 ldewangan@nvidia.com, thierry.reding@gmail.com, linux-i2c@vger.kernel.org,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, digetx@gmail.com,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Dec 09, 2021 at 08:35:20PM +0530, Akhil R wrote:
> Tegra I2C can use a gpio as an smbus-alert. Document the usage of
> the same.
> 
> Signed-off-by: Akhil R <akhilrajeev@nvidia.com>
> ---
>  Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.txt b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.txt
> index 3f2f990..71ee79b 100644
> --- a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.txt
> +++ b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.txt
> @@ -70,6 +70,10 @@ Required properties:
>    - rx
>    - tx
>  
> +optional properties:
> +- smbalert-gpio: Must contain an entry for the gpio to be used as smbus alert.
> +  It will be used only if optional smbus-alert property is present.

There's already a standard way to do this with interrupts. And GPIOs can 
be interrupts usually.

> +
>  Example:
>  
>  	i2c@7000c000 {
> -- 
> 2.7.4
> 
> 
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
