Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AD30546EC03
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 16:43:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E07161A46
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 15:43:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E7F0361A3A; Thu,  9 Dec 2021 15:43:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A8C3617AB;
	Thu,  9 Dec 2021 15:43:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CB83C60649
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:43:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C920C617AB; Thu,  9 Dec 2021 15:43:00 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by lists.linaro.org (Postfix) with ESMTPS id BE4D5617A2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:42:58 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id d10so12768864lfg.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Dec 2021 07:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EvO/FOiOCWth/FsOcriskw+XXfX3SWZF4L2HEDkisk8=;
 b=NVpSCwixqgt/s+m64RE965+1r6N8iz0jKflNTSnOXDwsOUq+B1XphgPaMh11aW9sCA
 V++r7Biw3AQbu2oa345NgHRKfcBa5x7NjC/Bd+gJxKR8z+2/Jtu6aFKRde+Sk2AJc3Nz
 bnw5OHTGsApj8RSjGGwtwOvFaB3vEN6PQRycWuOvJN5V2Y9z+PHUFqKPKGfo/uDdDnHU
 PSowtofEMlyWKrxWHz+oMZHPjRsrqEnFP0Ytim7VpdVax9HBs0+E6OYGH5SkoM10i2aY
 VjHUf1EI8K3/5PQswKlLVCjdsKc0mBR9IaXi33ek/vlqsZSB1+WKqjhft0pwiNjkb2te
 qYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EvO/FOiOCWth/FsOcriskw+XXfX3SWZF4L2HEDkisk8=;
 b=qV3y04lrHDiwVWSr4byuxyAU6gyZEWnm4qUUv72s3rQbbbcLw6wLFhjDVPzdC4jr1t
 y9ijiVYS7n872oPIk7AoRjSrjQtSICvMxpjznzuFqZ/ev9al+QMOHloT59Jq0q6M0hzN
 KwSwlC0jZCevImyU3rWkKA7H4E2xnw5vjDkrL7Mxo4JfTqLsEy3jY0P0UJdfoKhi1jUu
 4hm3Vu+/l5gAP/bk5jzVBCXBkdeUjByPrNEb3MLmVFAGMcxHq6KtKyRswxfWufttakej
 XDtXEy8NyHv9mX+St0c97Lp18kidew4nT9a3m4DOYdNhF6wq/i5wJj4Gxh13YuyMKjD4
 SFAQ==
X-Gm-Message-State: AOAM533Sqxh4PQUya00lLs1RHUveVgScHRyUcW0kwIm273N3njlCab3j
 T2+jxcaW+rRvfUlgnK2LHU4=
X-Google-Smtp-Source: ABdhPJxjIgn0eiZzOehZ2++jZY7CvqrvLqgIMzHyNe2HnCPgiYagwaHSH2xhh9zQzvqXkDKw7MDOYQ==
X-Received: by 2002:ac2:428e:: with SMTP id m14mr6890090lfh.625.1639064577649; 
 Thu, 09 Dec 2021 07:42:57 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id z24sm19608lfh.289.2021.12.09.07.42.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 07:42:57 -0800 (PST)
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
 <1639062321-18840-3-git-send-email-akhilrajeev@nvidia.com>
 <976c8d73-d137-2050-ca82-18326456c9e8@gmail.com>
 <CAHp75VdzrT5z13qx-mMRdrS2=GrMOv87WaEPL5eoPO5cBiqjDg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8803c595-8cb8-2511-b3eb-dcd2add6f867@gmail.com>
Date: Thu, 9 Dec 2021 18:42:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VdzrT5z13qx-mMRdrS2=GrMOv87WaEPL5eoPO5cBiqjDg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] i2c: tegra: Add SMBus block read
 and SMBus alert functions
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
Cc: devicetree <devicetree@vger.kernel.org>, Akhil R <akhilrajeev@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Jon Hunter <jonathanh@nvidia.com>,
 linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MDkuMTIuMjAyMSAxODozMywgQW5keSBTaGV2Y2hlbmtvINC/0LjRiNC10YI6Cj4gT24gVGh1LCBE
ZWMgOSwgMjAyMSBhdCA1OjMwIFBNIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4g
d3JvdGU6Cj4+IDA5LjEyLjIwMjEgMTg6MDUsIEFraGlsIFIg0L/QuNGI0LXRgjoKPj4+ICtzdGF0
aWMgaW50IHRlZ3JhX2kyY19zZXR1cF9zbWJhbGVydChzdHJ1Y3QgdGVncmFfaTJjX2RldiAqaTJj
X2RldikKPj4+ICt7Cj4+PiArICAgICBzdHJ1Y3QgdGVncmFfaTJjX3NtYmFsZXJ0ICpzbWJhbGVy
dCA9ICZpMmNfZGV2LT5zbWJhbGVydDsKPj4+ICsgICAgIHN0cnVjdCBncGlvX2Rlc2MgKmFsZXJ0
X2dwaW9kOwo+Pj4gKyAgICAgc3RydWN0IGkyY19jbGllbnQgKmFyYTsKPj4+ICsKPj4+ICsgICAg
IGFsZXJ0X2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoaTJjX2Rldi0+ZGV2LCAic21iYWxlcnQiLCBH
UElPRF9JTik7Cj4+PiArICAgICBpZiAoSVNfRVJSKGFsZXJ0X2dwaW9kKSkKPj4+ICsgICAgICAg
ICAgICAgcmV0dXJuIFBUUl9FUlIoYWxlcnRfZ3Bpb2QpOwo+Pj4gKwo+Pj4gKyAgICAgc21iYWxl
cnQtPmFsZXJ0X2RhdGEuaXJxID0gZ3Bpb2RfdG9faXJxKGFsZXJ0X2dwaW9kKTsKPj4+ICsgICAg
IGlmIChzbWJhbGVydC0+YWxlcnRfZGF0YS5pcnEgPD0gMCkKPj4+ICsgICAgICAgICAgICAgcmV0
dXJuIHNtYmFsZXJ0LT5hbGVydF9kYXRhLmlycTsKPj4KPj4gMCBpcyB0aGUgZXJyb3IgY29uZGl0
aW9uLgo+IAo+IEknbSBub3Qgc3VyZSB3aGF0IHlvdSBpbXBsaWVkIGhlcmUuIGdwaW9kX3RvX2ly
cSgpIHJldHVybnMgMCBpZiBhbmQKPiBvbmx5IGlmIGl0IGdvZXMgdG8gdGhlIGFyY2hpdGVjdHVy
ZXMgd2hlcmUgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8KPiBoYXZlIHZhbGlkIHZJUlEgMCwgYnV0
IHRoaXMgaXMgbm90IHRoZSBjYXNlIChhdCBsZWFzdCBJIG5ldmVyIGhlYXJkIG9mCj4gYSBzdWNo
KSBmb3IgR1BJTyBjb250cm9sbGVycyBvbiBzdWNoIHBsYXRmb3Jtcy4gU28sIGxvb2tpbmcgYXQg
dGhlCj4gYWJvdmUgY29kZSBJIG1heSB0ZWxsIHRoYXQgdGhlICc9JyBwYXJ0IGlzIHJlZHVuZGFu
dC4KPiAKClllcywgcmVtb3ZhbCBvZiB0aGUgJz0nIHNob3VsZCBiZSBlbm91Z2ggaGVyZS4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
