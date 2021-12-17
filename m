Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F59A478DF4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Dec 2021 15:40:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3BBD62D51
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Dec 2021 14:40:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C3AB62D44; Fri, 17 Dec 2021 14:40:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6785962D21;
	Fri, 17 Dec 2021 14:40:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 491FF6065A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Dec 2021 14:39:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E09A62D1D; Fri, 17 Dec 2021 14:39:57 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 2A67462D18
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Dec 2021 14:39:55 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id y196so1749397wmc.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Dec 2021 06:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=HWygtIWBaax9xKMejUdqL907XvRbbIbFJ++8LtFRCPM=;
 b=j709/z9d0nSj4a0LhjxAyTEsN82bBOs0ZuTF0SBlP4ANVkoPs6vU80t/hCULEe2cY6
 e9ePIzlfTZ+pso6oQW4Bx3WLmELFM1ye7QLPCo8kWo/rO02s8Zah0A0VOzXbTP9HrANf
 J76KGHrHfzwzQE1OE/3mx6gNNJoPPlJLh9m+nRgMVcTUKK4m4pVc25BGxaVzBefwoTDg
 GaPrTAWH+hapqZRvVRazMowjmEYmaCNtUgQ7GRK17yhpyP3H0ir+WnjulWYOixtxjulm
 2yDImCe+IiUPn1SOX3haboDK6x7G2bHkqCBdmXNSbEB8qQ1tXjOrPVuJVFh6lL31sC5C
 APfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=HWygtIWBaax9xKMejUdqL907XvRbbIbFJ++8LtFRCPM=;
 b=LtIaaOKvxD1nIQXULcYR2yP8MmLqAhp1HW5LlxPHVo4EAXwazFe2lkz2Xyul37DTwW
 Ck2HNoSzUmpsZlTFvj3bBrBnSBh5vgD8z0+ipcQVopr/b+qL0jz0onVQlte2wnIazozR
 gUgbD2aSjNnjKCJ1+KjkwOQbNsRQuBdWQg5lo+3rsWqLMJdEyAKnE/SRKlrhKYY0DV+e
 g+Q5+ArT0VpHb7eQZduArc+7TQVOMqCSvEfuv5wLLgSP3kn9TK2YKKXvJWihQHazRX7q
 GFq4kzT0GNj8a6x7xuBtoCPM5z2B2lOkykzunLko8jXvxASmEdQA2DLEcyuPeeYyZaL+
 BnHQ==
X-Gm-Message-State: AOAM532ZSBvBVEqvlhnVxe+Z9c8gqPvH7veUG4Sawb9twnWnSMm+RnzP
 IVp9W5+EdWJw27xwyN0+KV3X9b2jDto=
X-Google-Smtp-Source: ABdhPJyo5WDyT2lwprMsF8S6JSfvPGHlYUch6ROyXUW3mwaC72PuDgs8QSZqOEU1xTpafddGznuFMw==
X-Received: by 2002:a05:600c:8a7:: with SMTP id
 l39mr10158138wmp.138.1639751994168; 
 Fri, 17 Dec 2021 06:39:54 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:5aaa:182f:8216:9a28?
 ([2a02:908:1252:fb60:5aaa:182f:8216:9a28])
 by smtp.gmail.com with ESMTPSA id l5sm8846192wrs.59.2021.12.17.06.39.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Dec 2021 06:39:53 -0800 (PST)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20211207123411.167006-1-christian.koenig@amd.com>
Message-ID: <e8c7284f-e18e-0dcc-f0a2-3a1ad6222fd4@gmail.com>
Date: Fri, 17 Dec 2021 15:39:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] completely rework the dma_resv semantic
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgRGFuaWVsLAoKbG9va3MgbGlrZSB0aGlzIGlzIGdvaW5nIG5vd2hlcmUgYW5kIHlvdSBkb24n
dCBzZWVtIHRvIGhhdmUgdGltZSB0byByZXZpZXcuCgpXaGF0IGNhbiB3ZSBkbz8KClRoYW5rcywK
Q2hyaXN0aWFuLgoKQW0gMDcuMTIuMjEgdW0gMTM6MzMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Ogo+IEhpIERhbmllbCwKPgo+IGp1c3QgYSBnZW50bGUgcGluZyB0aGF0IHlvdSB3YW50ZWQgdG8g
dGFrZSBhIGxvb2sgYXQgdGhpcy4KPgo+IE5vdCBtdWNoIGNoYW5nZWQgY29tcGFyZWQgdG8gdGhl
IGxhc3QgdmVyc2lvbiwgb25seSBhIG1pbm9yIGJ1Z2ZpeCBpbgo+IHRoZSBkbWFfcmVzdl9nZXRf
c2luZ2xldG9uIGVycm9yIGhhbmRsaW5nLgo+Cj4gUmVnYXJkcywKPiBDaHJpc3RpYW4uCj4KPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
