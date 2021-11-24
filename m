Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66145C988
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 17:05:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 922A962C99
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 16:05:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8014B62170; Wed, 24 Nov 2021 16:05:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A2E160C4C;
	Wed, 24 Nov 2021 16:05:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6783160C29
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 16:05:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5F01F60C79; Wed, 24 Nov 2021 16:05:23 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by lists.linaro.org (Postfix) with ESMTPS id 383AE60C29
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 16:05:21 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id f18so8542795lfv.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 08:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XaZL1gqGefL3we/nKaFes+6q80QBPA1qm8dyiAwLJtk=;
 b=JvocAoplJmBKFZX3YppjDDIfPCn6erSoH/8cS7ieRxpQvQU9lkBGkVm/twRJKwnLhu
 I3BawiPYHkOHcDVlzVnkPhrkWTWKwxw+ZCKJIQTMWvN4H09wJnKg/7wBq/6yyB/reMHA
 8bkNbqQHBWnpBQc7yJBzYiNsqDKjuoRVm5cYDqha+zcWXW5W64aR2B9TSsisc4JX4Jno
 PUBqy+Docg631q5XAV1+VX1TPXXgnViDug3VSGocGH44cyDbXvBEX/eRpH5oDJIwO1or
 mVXtQd9ICqWNgl18w6E6hbGq8KSnJ4sGIrdjJLiXOTIomzt9KvYWlIVJc2hzJ0eP+bnP
 Sw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XaZL1gqGefL3we/nKaFes+6q80QBPA1qm8dyiAwLJtk=;
 b=qi+9Khm2xKxJOQYjfyRfSyGIz3WyTsvG7ol9ht1Q/E4OUklIYBf6f/0P0DCW7Fa8Pa
 HVX3prjG3Cr8Yh5MLtuuzo9foOVvn6wKTUGeo1KQou4LGOCvLs2hGxMdhTfbrA+7od7W
 3a/Dbrhv4ZC6foZfVMle+F5Qn6uq4CiCIfGfIQs98L8u0pfPdCMOX9NuPO3w/FfZIRFv
 HCkFMy5YCrJQolViV3FV+1+ovr/DsdyKa+52vn/vstkw1REvULgeda0tJf4gL3LETLZL
 A5pfM+Seie6GFqNNszqZHJSlPKYFGEeU6OHe7IMd4LpTTQAInS4bJHuJixvA+ry3xkwM
 phwg==
X-Gm-Message-State: AOAM530i8DVflpZ93Rn0pGeK8HcVGcehwnyHuXQsTYrBw7IWpz3RG0G+
 u+lQKUCu4/ynnUqBf4dWFzY=
X-Google-Smtp-Source: ABdhPJxrdgHea8Krc6d9ZfZFMLQzyWZ6L75uGZec6KisbMsGo8JOFKZjsX4oRJUwAnPRr3c0zWOsZw==
X-Received: by 2002:a19:5e59:: with SMTP id z25mr16017187lfi.686.1637769919078; 
 Wed, 24 Nov 2021 08:05:19 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id e14sm25124lfs.150.2021.11.24.08.05.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Nov 2021 08:05:18 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>,
 "andy.shevchenko@gmail.com" <andy.shevchenko@gmail.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>
References: <1637328734-20576-1-git-send-email-akhilrajeev@nvidia.com>
 <1637651753-5067-1-git-send-email-akhilrajeev@nvidia.com>
 <eebf20ea-6a7f-1120-5ad8-b6dc1f9935e6@gmail.com>
 <BN9PR12MB5273A7628D80076F4EF2CC69C0619@BN9PR12MB5273.namprd12.prod.outlook.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b06a5072-f0f4-c9f9-f9a2-8d76b4432415@gmail.com>
Date: Wed, 24 Nov 2021 19:05:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <BN9PR12MB5273A7628D80076F4EF2CC69C0619@BN9PR12MB5273.namprd12.prod.outlook.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] i2c: tegra: Add ACPI support
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
Cc: Shardar Mohammed <smohammed@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MjQuMTEuMjAyMSAxMDoxOCwgQWtoaWwgUiDQv9C40YjQtdGCOgo+PiAqaTJjX2RldikKPj4+ICAg
ICAgICAgICAgICAgaTJjX2Rldi0+aXNfdmkgPSB0cnVlOwo+Pj4gIH0KPj4gSG93IGFyZSB5b3Ug
Z29pbmcgdG8gZGlmZmVyZW50aWF0ZSB0aGUgVkkgSTJDIGZyb20gYSBub24tVkk/IFRoaXMgZG9l
c24ndCBsb29rCj4+IHJpZ2h0Lgo+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgQUNQSSBzdXBwb3J0IHRv
IG9ubHkgbm9uLVZJIEkyQy4gVGhlIGRldmljZV9pZHMgaW4gbWF0Y2ggdGFibGUKPiBhcmUgYWRk
ZWQgYWNjb3JkaW5nbHkuIEkgc3VwcG9zZSwgb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUgYWx3YXlz
IHJldHVybnMgZmFsc2UgYXMgCj4gdGhlcmUgaXMgbm8gZGV2aWNlIHRyZWUuIAo+IEFncmVlIHdp
dGggdGhlIG90aGVyIGNvbW1lbnRzLgoKV2lsbCB0aGUgVkkgSTJDIGhhdmUgYSBkaWZmZXJlbnQg
QUNQSSBJRCBvciBob3cgaXQncyBnb2luZyB0byB3b3JrPwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
