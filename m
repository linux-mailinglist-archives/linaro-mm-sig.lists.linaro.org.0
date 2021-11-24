Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 060DF45CB0A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 18:29:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59A1462C95
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 17:29:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 573CC60E15; Wed, 24 Nov 2021 17:29:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B26D60C4C;
	Wed, 24 Nov 2021 17:29:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B42F960707
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 17:29:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6FEB60C4C; Wed, 24 Nov 2021 17:29:21 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by lists.linaro.org (Postfix) with ESMTPS id 9D35B60707
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 17:29:19 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id v15so7129839ljc.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 09:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ydUydaywLW87b6G3VEUPeR5PFEYyoQL/BmcPvqzWAYE=;
 b=CyZhQDspBWd+9xlvoI5RVBF+09UDksRX0c03lZTTtQ/7SilD8KdMDQ1DZ6hrVRsZiN
 t5TvcoXmsHKHYC/JfKthFjYHWPYsQ/OMcKcorVPvFI56Ixyxi4EHeeN9XC2OAqThTn1Y
 BZYL/5rzIqHLBqJJvNVsAg9l8SHRJr4C92FiFHueGuN0c1b9wVcUf4SEmShRwu2IFJrF
 +cuzJDzIeEQguNTtO4g5XNPNQhbpLGJDADTNg/Ueg0q3pddl+TdM8mT+gOK9VY6n05JH
 ySR9yR9+/228BIGVgHT/9r6ERxG+jbMRR5lASbNaab1UyapCu3GIu51cPhA9DVC1evnD
 biUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ydUydaywLW87b6G3VEUPeR5PFEYyoQL/BmcPvqzWAYE=;
 b=xtJ/VkiOd0gwm8XOSphsInDHVvXGEThdydrW6YQ2obbxVEFGlo+LI/IDlostMhdUBa
 iSzeB0891hmigOni0+Yre9C5JlHlKAAbho5iA2XcAvNv6qe+6hCQwBuAAiz5l9kl2oTs
 v51vC+rFSgOB7ynuMoaeK/wRpIGMCnybUObperu89C5wiA1cdiBIinZtzkCeYanTqrvt
 cyOJ7WqN0AZF2AfgoP7IClhvYEQSh2O+Eg9q/2rC0Dg8RvdTzn3yWPZZhIJhv91bKcA+
 9lrZAgdUQrWSYWSJp3GlWqHjqUspEc+O6pOEDumeAe420w27E0onm8og+WEtPfL7ijeW
 7uAg==
X-Gm-Message-State: AOAM532KKmY54NHY0L/0QOFrJRl38v6pz262pGYjIhgjGu7Hr59ptxa8
 ccy/R+MuqZBcpMgHbJd0g44=
X-Google-Smtp-Source: ABdhPJxPXUgL5sbmJ8QgM/1O4cZrC1JEdGxYpsxf6RgyOm2YXACjxbTj8io/Abcqz4xAMIM9ZZpS1w==
X-Received: by 2002:a2e:9806:: with SMTP id a6mr17728616ljj.185.1637774958306; 
 Wed, 24 Nov 2021 09:29:18 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id e17sm40549lfq.102.2021.11.24.09.29.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Nov 2021 09:29:18 -0800 (PST)
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
 <b06a5072-f0f4-c9f9-f9a2-8d76b4432415@gmail.com>
 <BN9PR12MB5273CA3AA78636EB0500897AC0619@BN9PR12MB5273.namprd12.prod.outlook.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <4af00198-82b8-6611-544e-4bba51354278@gmail.com>
Date: Wed, 24 Nov 2021 20:29:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <BN9PR12MB5273CA3AA78636EB0500897AC0619@BN9PR12MB5273.namprd12.prod.outlook.com>
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

MjQuMTEuMjAyMSAxOTo0MCwgQWtoaWwgUiDQv9C40YjQtdGCOgo+PiAyNC4xMS4yMDIxIDEwOjE4
LCBBa2hpbCBSINC/0LjRiNC10YI6Cj4+Pj4gKmkyY19kZXYpCj4+Pj4+ICAgICAgICAgICAgICAg
aTJjX2Rldi0+aXNfdmkgPSB0cnVlOyAgfQo+Pj4+IEhvdyBhcmUgeW91IGdvaW5nIHRvIGRpZmZl
cmVudGlhdGUgdGhlIFZJIEkyQyBmcm9tIGEgbm9uLVZJPyBUaGlzCj4+Pj4gZG9lc24ndCBsb29r
IHJpZ2h0Lgo+Pj4gVGhpcyBwYXRjaCBhZGRzIHRoZSBBQ1BJIHN1cHBvcnQgdG8gb25seSBub24t
VkkgSTJDLiBUaGUgZGV2aWNlX2lkcyBpbgo+Pj4gbWF0Y2ggdGFibGUgYXJlIGFkZGVkIGFjY29y
ZGluZ2x5LiBJIHN1cHBvc2UsIG9mX2RldmljZV9pc19jb21wYXRpYmxlCj4+PiBhbHdheXMgcmV0
dXJucyBmYWxzZSBhcyB0aGVyZSBpcyBubyBkZXZpY2UgdHJlZS4KPj4+IEFncmVlIHdpdGggdGhl
IG90aGVyIGNvbW1lbnRzLgo+Pgo+PiBXaWxsIHRoZSBWSSBJMkMgaGF2ZSBhIGRpZmZlcmVudCBB
Q1BJIElEIG9yIGhvdyBpdCdzIGdvaW5nIHRvIHdvcms/Cj4gQXMgdGhlcmUgaXMgYSBkaWZmZXJl
bnQgY29tcGF0aWJsZSBmb3IgVkkgSTJDIGluIGRldmljZSB0cmVlLCBJIHN1cHBvc2UgdGhlIEFD
UEkKPiB3b3VsZCBoYXZlIGEgZGlmZmVyZW50IElEIGFzIHdlbGwuIEkgdGhpbmsgdGhlIGxvZ2lj
IHdvdWxkIGFsc28gbmVlZCBhbiB1cGRhdGUgCj4gaWYgdG8gaGF2ZSBWSSBJMkMgdXNpbmcgdGhl
IEFDUEkuIEJ1dCB0aGF0IHdhc24ndCBhY3R1YWxseSBjb25zaWRlcmVkIGluIHRoaXMgcGF0Y2gu
CgpUaGFua3MsIHlvdSBjb3VsZCByZWZsZWN0ZWQgaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
