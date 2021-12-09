Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0092E46EC0A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 16:44:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DD8A61A49
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 15:44:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 015A361A57; Thu,  9 Dec 2021 15:43:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DC106193B;
	Thu,  9 Dec 2021 15:43:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5706E60649
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:43:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 54A59617AB; Thu,  9 Dec 2021 15:43:55 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by lists.linaro.org (Postfix) with ESMTPS id 4B143617A2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:43:53 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id bu18so12916595lfb.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Dec 2021 07:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=zmr1TAXCDUHBoO/fN5HJJIcyfXLJJrTVzqtdSWu9w4U=;
 b=B3MQZDVoWi0elr+edK/mkohSqqJzZ1Pnmhw4lsMb9ovurYaUTqx8nnfcZd4mh9+rlu
 aHDUkX58r7ERf06e9wEb+CVvebxoRH0NjmjSBcrHLfuIGkBqeJBBQ79XWDzpKNbz5Ca0
 0VZcjJdx0sCdvTa4AqLMlcYcV0tWteo7iY0j+YI/ZlCDxeEfOfpik9uqCxFm/9T9Uu4U
 ZYK26YXATPMkB1UeQU9p58w+6xisRm/BzZtQlnUWTkr3LZcX5KU8tPU2o3CsAdtxYgw7
 C2NjNO9PxNEPZtQMWzT28aqIahT3gRkt7bjH926DJGi7Km5kavfIWIoT1Wyt83Iqgblu
 5fOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zmr1TAXCDUHBoO/fN5HJJIcyfXLJJrTVzqtdSWu9w4U=;
 b=41hMYG7rs+zNBM7Ae6tA0FCiNwcd3MuylxYYhnMfdPJBDOohK3S6ZgCRHpNtTqzRCc
 38DKH7N6eIwGj5XT3V5vVLwbq4Rdf90FQtoV9GyUmVCqAwPg6Hq3cXHff/M71PGzZKzG
 SC+rH+SJzgmbIEQRDfkx6rhyj5c4l8TpG/w7c62jJau8LzmKLMoSPOzv8GL8iv4XCG7q
 CrMHYKJlz+X939/6ZqRFKKNwKToOlFMXcVLHaqjGJhEt321CBZOw5r6jGFdeo5hMvOfx
 4FW2nPUdqDwkUFJKvHhlpV8Iuqi52Pvtis7PT0DCcxzqC/vHhJ4DulQDGOYcieyGIsg+
 KCew==
X-Gm-Message-State: AOAM531z/5otjsnxraOGrVFZEC1efOa8RxBwlyaRXSLWjE1nGxPIOMZc
 yv3FLxy5NdZGz57ESTdOFhQ=
X-Google-Smtp-Source: ABdhPJxX4GW3ep3V/uqAp1KIFYrKxz5iouYUzd+/NXOgsELglbKLG+ys0UQMXhdYNvG9QblVCcPgSA==
X-Received: by 2002:ac2:46c2:: with SMTP id p2mr1430988lfo.87.1639064632209;
 Thu, 09 Dec 2021 07:43:52 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id m18sm22333lfu.71.2021.12.09.07.43.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 07:43:51 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>, andy.shevchenko@gmail.com,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, ldewangan@nvidia.com, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, sumit.semwal@linaro.org, thierry.reding@gmail.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
 <1639062321-18840-3-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9443afa6-b668-ae31-2413-05aa95a9567d@gmail.com>
Date: Thu, 9 Dec 2021 18:43:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1639062321-18840-3-git-send-email-akhilrajeev@nvidia.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MDkuMTIuMjAyMSAxODowNSwgQWtoaWwgUiDQv9C40YjQtdGCOgo+ICtzdGF0aWMgaW50IHRlZ3Jh
X2kyY19zZXR1cF9zbWJhbGVydChzdHJ1Y3QgdGVncmFfaTJjX2RldiAqaTJjX2RldikKPiArewo+
ICsJc3RydWN0IHRlZ3JhX2kyY19zbWJhbGVydCAqc21iYWxlcnQgPSAmaTJjX2Rldi0+c21iYWxl
cnQ7Cj4gKwlzdHJ1Y3QgZ3Bpb19kZXNjICphbGVydF9ncGlvZDsKPiArCXN0cnVjdCBpMmNfY2xp
ZW50ICphcmE7Cj4gKwo+ICsJYWxlcnRfZ3Bpb2QgPSBkZXZtX2dwaW9kX2dldChpMmNfZGV2LT5k
ZXYsICJzbWJhbGVydCIsIEdQSU9EX0lOKTsKPiArCWlmIChJU19FUlIoYWxlcnRfZ3Bpb2QpKQo+
ICsJCXJldHVybiBQVFJfRVJSKGFsZXJ0X2dwaW9kKTsKPiArCj4gKwlzbWJhbGVydC0+YWxlcnRf
ZGF0YS5pcnEgPSBncGlvZF90b19pcnEoYWxlcnRfZ3Bpb2QpOwo+ICsJaWYgKHNtYmFsZXJ0LT5h
bGVydF9kYXRhLmlycSA8PSAwKQo+ICsJCXJldHVybiBzbWJhbGVydC0+YWxlcnRfZGF0YS5pcnE7
CgpXaHkgR1BJTyBpcyBuZWVkZWQgYXQgYWxsIGlmIHdoYXQncyBhY3R1YWxseSBuZWVkZWQgaXMg
dGhlIGludGVycnVwdD8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
