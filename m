Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A746EB3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 16:30:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E90C362072
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 15:30:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B5DB617AB; Thu,  9 Dec 2021 15:30:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B15BB617AB;
	Thu,  9 Dec 2021 15:30:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F10160559
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:30:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4CAD9617AB; Thu,  9 Dec 2021 15:30:45 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by lists.linaro.org (Postfix) with ESMTPS id 46E6960559
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:30:43 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id m6so871131lfu.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Dec 2021 07:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=n03DnVuGqtUKblp9GdOtMgVqcgHTNdmSEFo9Z6egz50=;
 b=LmuxhZEUso1R9uNF7JbaQIkwqm99F85FCEwbxLc6/6pZD7EHlCNysvMhxTaftqa1sg
 5sc0wkARbsXvmAcsVbhQ8e8aKcj+n2MBO29/IrAjpidp3lhRkIhfcnWz3EKzbif71Y24
 eORBpO8v9qwgqv3/j2AaqII34dt4hyPVz37jzTI2WfkKcMogTbhgA2Nphg8A63erE5WQ
 v5lF3TnorfgXHi0doJv2MdglI1J5gZc28QJDLeuZvb/v2HpNsyBFqnMYYDi5DtSuKVBC
 vCv8b1V2Kf5oH8yjnQM9BijQDWWzM3ezD3mJCtcbQh5V1uG8d2Y2eRDuI6kutrdTJrUQ
 +4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n03DnVuGqtUKblp9GdOtMgVqcgHTNdmSEFo9Z6egz50=;
 b=H9hmXKIi2mYtIma6zhS1U4W1hqRhc87ZL6sim/DuAAcImkjo3jpjsSj6gVVfhThJQj
 X2AEWERz96aZRMUft58+LbMEXV2JIjjwi4jNK65bmUClp/4EW/+7q6mdGMu97FT0Kz0N
 KsgE3qmVHJLekCpnmUg7XGk5VBsnK1hg6vTUswduynJ4+F/swtpInZ8LxruScnHOigrV
 8p7yLSTQoapiJOxxsCDMOetFG6fFeWa8XdSptrkGoJ4iiXrK6zm1TzfZbGXrOijkZmoq
 Af1rKlnPmPlPurPVXbmkAmMeRwDIFMwMnnwQHJ/hObWlFUKg+ADQQPC47P9C2UnjOPaz
 ZfJg==
X-Gm-Message-State: AOAM531dhRh0R05dIzFL5c0z96KHD1wVT+Gn/08YHhschsHZ96kpHQnw
 AsjecUrlQdbDRbK7mEh05PA=
X-Google-Smtp-Source: ABdhPJxfU4AVMuK0id7yHKzhZjDqNHaXB0zMqpbZuvEyhiPtZc56jINzQj9tLVUTAtYm0jUAeDMu7Q==
X-Received: by 2002:a05:6512:2292:: with SMTP id
 f18mr6560957lfu.18.1639063842155; 
 Thu, 09 Dec 2021 07:30:42 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id z23sm12126ljn.23.2021.12.09.07.30.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 07:30:41 -0800 (PST)
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
Message-ID: <976c8d73-d137-2050-ca82-18326456c9e8@gmail.com>
Date: Thu, 9 Dec 2021 18:30:40 +0300
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
CgowIGlzIHRoZSBlcnJvciBjb25kaXRpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
