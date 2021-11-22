Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8EE458C89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 11:43:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64DF562072
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 10:43:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 020986204D; Mon, 22 Nov 2021 10:43:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B6A861C3D;
	Mon, 22 Nov 2021 10:43:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0ADD260C6A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 10:43:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7A41C61EB5; Mon, 22 Nov 2021 10:33:43 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by lists.linaro.org (Postfix) with ESMTPS id 62B7661EAF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 10:33:41 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id y26so78285872lfa.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 02:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nrxZZZTUaK5PX2ySh0+vBqyiZXpekCDZnPCBfoLVNj8=;
 b=PBRfkEeYxsKR7JApIAGoA9f/5z9fI/wiXjTBCL/PUUL1M2yf5L99Ocjs/ID34wmvxa
 ccVyhqkPjMrZv4YC2K9g8y0Kl2IwE2TDrDfFwuKfwdYzl03rFrnAtp0KdET7oL4woquF
 ya5NXRIbVvBsW6inbrBMwE2COQ5KdwVw7H+8QvYJrKtyZLgPm2weo4ZK1YkCxrL1qFgZ
 g7TRwzqICHBaHaCME6zIkKdp59ENCOXAeiL/SyD0GjqLDrkNS4HPOQY71Qeuf5OZxcs/
 YXF6rI5t9FtGjjObSRj3mJ+MkWoQa+8wwxDn3fDsNmNj9e+vUt9IrL0w9IsjoNGc1Lf3
 6plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nrxZZZTUaK5PX2ySh0+vBqyiZXpekCDZnPCBfoLVNj8=;
 b=mP06X4VRvA6yIfwt7dUZRPmjD7cGfDYrvgbWRC45hpbxLFB+ZkOssxXzwk4fuZG9uj
 jtSlHZ461jbMtP0y6LUaY9Z+bDVyoXJrfC4eIqwfp2JI7tVgRr7JKraR06+guJlYR1Vs
 qYHewEyfQvb+6rGxCXRqMo0jrLXkCMuWsul4Kx0Ors1Syc62nJQ3AWR1xe5b/SYfXnx+
 2kwNHEmg14zYu9s/PgU+e74k8oCmz/fxD6vG4UnHCc7gGHv1jXwC3njof74ldZclgsNI
 at/01S9R1O1M5gjgkDoELNwRGdrtZXgctldotVNdNkGgzMLQRxIe0B6QMvyviIys/LGT
 +qdg==
X-Gm-Message-State: AOAM530I5QuVI0Smik6oRWFdmMIjgKaK1EE+rTYWsDQeKiGh6hoANJ4p
 7kBt7WJEYLqAafugArd7l7pPqPqcMdk=
X-Google-Smtp-Source: ABdhPJzZ/qm5LLGImo0I/3G8kIkfGaa7D9I8/JdE3U3vap72N3xDDHAzVRpK4BfX2bx0KTP6BS+BIA==
X-Received: by 2002:a2e:6a11:: with SMTP id f17mr49823727ljc.206.1637577217813; 
 Mon, 22 Nov 2021 02:33:37 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id x4sm898633ljd.1.2021.11.22.02.33.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 02:33:36 -0800 (PST)
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Akhil R <akhilrajeev@nvidia.com>
References: <1637328734-20576-1-git-send-email-akhilrajeev@nvidia.com>
 <CAHp75Vfi5gw4jnJg2bmubKMB_H8s09PfNWVVZWwewuCnW5_+hg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <f213eb06-7b07-b01b-786d-4435a59d4fc3@gmail.com>
Date: Mon, 22 Nov 2021 13:33:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Vfi5gw4jnJg2bmubKMB_H8s09PfNWVVZWwewuCnW5_+hg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] i2c: tegra: Add ACPI support
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-tegra <linux-tegra@vger.kernel.org>, Jon Hunter <jonathanh@nvidia.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MTkuMTEuMjAyMSAxNzo0OCwgQW5keSBTaGV2Y2hlbmtvINC/0LjRiNC10YI6Cj4+ICsgICAgICAg
aWYgKGkyY19kZXYtPm5jbG9ja3MgPT0gMCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiBX
aHk/IE1ha2UgY2xvY2tzIG9wdGlvbmFsLgoKVGhpcyBjaGVjayBzaG91bGRuJ3QgYmUgbmVlZGVk
IGJlY2F1c2UgYm90aCBjbGtfZGlzYWJsZSgpIGFuZApjbGtfYnVsa191bnByZXBhcmUoKSBzaG91
bGQgaGFuZGxlIE5VTEwvemVybyBjbG9ja3Mgd2l0aG91dCBwcm9ibGVtcy4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
