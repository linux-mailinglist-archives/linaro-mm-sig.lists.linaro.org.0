Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B6B46EC85
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 17:04:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EDE561A36
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 16:04:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F1E3761C40; Thu,  9 Dec 2021 16:04:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E370617EF;
	Thu,  9 Dec 2021 16:04:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A079603AA
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 16:04:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 579F6617EF; Thu,  9 Dec 2021 16:04:35 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by lists.linaro.org (Postfix) with ESMTPS id 51EF0603AA
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 16:04:33 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id p8so9727016ljo.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Dec 2021 08:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=VyNNZFntqq/7S368iziv68PH8JNo+/JFrth8MiQPnN0=;
 b=IA7AoXxTmmSQDOR+7JKZHyzbrQBtcmUHlvjNOsI6VhwUlOOkWTKICCOXFWDtkJ5+9I
 zmOVovEwnkRPBJXuZusPYkhCOLHcCgFyE3xc/D0BrQ00tfWhCmYJJmylb1/Y6fqP08r4
 VtKTR9+q0cQqyn7osxibjswsFTnwV8iUVhUnqyGnYlwBNoMD36ugcWUATRYKTXR+EOBQ
 9Knz1bXER1N69YwSURq1/WRV9wNnH1jlUXPvem/b6QE7oAMoy997fsL6Z/0qTpEX9nmS
 INuhBlkVetXa9YG9Rht9GQgAMN1x5HZzyYFVQZm2Ut1XbKhxW0rDJG6vAPYZ3624XIpL
 vRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VyNNZFntqq/7S368iziv68PH8JNo+/JFrth8MiQPnN0=;
 b=A36/Tvz4ou2+DOE01IrTKtkg+r/Oa9mvEDJDYxtwDp0F3MQ4gSta6Yf+qe6AtUYBmo
 9KioI0Qi0Rmn26R8QJk1amZ+P0ASXlojjAHlMGX+WGkfXIVoAc7nZGFijzXo7OPs5YGJ
 BH4rO9lUel+1mTr+BxTU6A1FhxFgiNaeGQ9CNzaWo8/BbPpFXy5UbEdYFWMQ613gw5Fw
 YpbJJyiI0T32TaBybgcmebw0EV1BaOjE5dNBU/YGCkqoclMbGKfo/tenVp7nMnDppddP
 qPe0cl4JxujAjsWoWO/yVjBmkbGEpcA38gZQ4DVYU8JuS0ZrCxP8tAAqzzYruc2JxYSL
 DN/w==
X-Gm-Message-State: AOAM532pzFGdhkOQvuJL4EE+q1pmhWS1rJcy2x4fFVKE+i16nF5Al5iI
 GmIU/FVPS9mk2Q/sW0v5xqA=
X-Google-Smtp-Source: ABdhPJyjIVIwTFb/jRVG1s/HtU+6iq+SlVSeTRgCyq6BgyCqa/f3O4tShJ7SxaDdE4z6Q6IQHg5qYA==
X-Received: by 2002:a2e:aa14:: with SMTP id bf20mr7025963ljb.376.1639065872006; 
 Thu, 09 Dec 2021 08:04:32 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id a23sm16158ljh.140.2021.12.09.08.04.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 08:04:31 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>, andy.shevchenko@gmail.com,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, ldewangan@nvidia.com, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, sumit.semwal@linaro.org, thierry.reding@gmail.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e3deea6a-3854-e58c-0d27-602413f2a496@gmail.com>
Date: Thu, 9 Dec 2021 19:04:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 0/2] Add SMBus features to Tegra I2C
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MDkuMTIuMjAyMSAxODowNSwgQWtoaWwgUiDQv9C40YjQtdGCOgo+IEFkZCBzdXBwb3J0IGZvciBT
TUJ1cyBBbGVydCBhbmQgU01CdXMgYmxvY2sgcmVhZCBmdW5jdGlvbnMgdG8KPiBpMmMtdGVncmEg
ZHJpdmVyCj4gCj4gQWtoaWwgUiAoMik6Cj4gICBkdC1iaW5kaW5nczogaTJjOiB0ZWdyYTogQWRk
IFNNQnVzIGZlYXR1cmUgcHJvcGVydGllcwo+ICAgaTJjOiB0ZWdyYTogQWRkIFNNQnVzIGJsb2Nr
IHJlYWQgYW5kIFNNQnVzIGFsZXJ0IGZ1bmN0aW9ucwo+IAo+ICAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9pMmMvbnZpZGlhLHRlZ3JhMjAtaTJjLnR4dCB8ICA0ICsrCj4gIGRyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtdGVncmEuYyAgICAgICAgICAgICAgICAgICAgIHwgNTQgKysrKysrKysrKysrKysr
KysrKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKCkhvdyB0aGlzIHdhcyB0ZXN0ZWQ/IFRoaXMgc2VyaWVzIG11c3QgaW5jbHVkZSB0aGUg
RFQgcGF0Y2guIElmIHRoZXJlIGlzCm5vIHJlYWwgdXNlciBpbiB1cHN0cmVhbSBmb3IgdGhpcyBm
ZWF0dXJlLCB0aGVuIEkgZG9uJ3QgdGhpbmsgdGhhdCB3ZQpzaG91bGQgYm90aGVyIGF0IGFsbCBh
Ym91dCBpdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
