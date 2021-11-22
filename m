Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0D4458C78
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 11:40:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F164E62170
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 10:40:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A311E62164; Mon, 22 Nov 2021 10:40:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6614762003;
	Mon, 22 Nov 2021 10:40:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2FC1861EF7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 10:40:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2668762002; Mon, 22 Nov 2021 10:40:05 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by lists.linaro.org (Postfix) with ESMTPS id 123B761EF7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 10:40:03 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id l22so78273952lfg.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 02:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=d2zC3GZX8uS+l6jcheKIGphOeFfmp6L0jvVLD+Y/Jgg=;
 b=e9xey83dyEX1R8jouZHFbXYCyGbfzrF7RGhHRazW+A4EbXdOczICrLDI5vFSjMqyaC
 YEDnaR9k/x0Jhz26HC8Qj7d0qdmFie/GKN8Os2iatdxGaaK8VvUxi70lBlwvnkszpZbg
 pKrkthP3GjNll4KT0rnCXDTOd0HdZZbi3uDEORe5TefBJWgTAuJrT1zV/Foi7Rm0eQzj
 iJzIl0dtXtkVb+gHZVbdU286KjzEAy2j+HiNRcllY8ZuiKsK9zdjPm1tWVJwTHovb6Wk
 OTV22QCJlQtbPtMe2xALyYK3nuVFN8Ytjme1HmzppML5wLgzi1D8unL3p5Q0yZKlZ79j
 9BIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d2zC3GZX8uS+l6jcheKIGphOeFfmp6L0jvVLD+Y/Jgg=;
 b=VDxTBnNQNDXV6MoaeE4/Fw0JVXxqBztY77fuXYzocVf8VAGJD/UariaUGmCY/5O5gI
 fziagjMIOI3/Bux8j1csBJGKHlsNjmfmUFd1nmPOYxyMRJaDit6Kbm7UtUYMVZKVs3Kr
 m1BeNqR0QC/CUXGHtwNaFdGQ4ka7tln9qabCZutY8xkV3/617MHEy7cp6UzCQ/Sa7ppW
 MRfZdu/uE4/ugelCSArTyorAWZAV9jAohtg+an272880VbQ8Z8Ur+QzivBXaHIruJC+g
 cY+uZYyv0Bio9IQoUUWipYF5RVUEy3QTSd3Y0uZiZCthqAS3e2XGa3B4dsjF0oo4ox6j
 kASg==
X-Gm-Message-State: AOAM530xwGbZqZsZNL8+/HsUQar+BMQUOLihyHrAPywxgimwZWXTH2UV
 UmlOETFfRF7cVIkVRMERChU=
X-Google-Smtp-Source: ABdhPJz8MCr6N9OooxMtZp0JXg0RH1rMd+WUjNeUklGObs/fDFhoLmD6Spn0Rgm+TP5aJLvUKKCc/g==
X-Received: by 2002:a05:6512:2033:: with SMTP id
 s19mr56816313lfs.290.1637577601896; 
 Mon, 22 Nov 2021 02:40:01 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id bp36sm1061426lfb.0.2021.11.22.02.40.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 02:40:01 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>, ldewangan@nvidia.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, p.zabel@pengutronix.de,
 sumit.semwal@linaro.org, christian.koenig@amd.com,
 linux-i2c@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 andy.shevchenko@gmail.com
References: <1637328734-20576-1-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0c92231a-5bc5-be08-bf9d-0b77b85648be@gmail.com>
Date: Mon, 22 Nov 2021 13:40:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1637328734-20576-1-git-send-email-akhilrajeev@nvidia.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MTkuMTEuMjAyMSAxNjozMiwgQWtoaWwgUiDQv9C40YjQtdGCOgo+IC0JaTJjX2Rldi0+cnN0ID0g
ZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoaTJjX2Rldi0+ZGV2LCAiaTJjIik7Cj4g
LQlpZiAoSVNfRVJSKGkyY19kZXYtPnJzdCkpIHsKPiAtCQlkZXZfZXJyX3Byb2JlKGkyY19kZXYt
PmRldiwgUFRSX0VSUihpMmNfZGV2LT5yc3QpLAo+IC0JCQkgICAgICAiZmFpbGVkIHRvIGdldCBy
ZXNldCBjb250cm9sXG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VSUihpMmNfZGV2LT5yc3QpOwo+IC0J
fQo+IC0KPiAgCXRlZ3JhX2kyY19wYXJzZV9kdChpMmNfZGV2KTsKPiAgCj4gLQllcnIgPSB0ZWdy
YV9pMmNfaW5pdF9jbG9ja3MoaTJjX2Rldik7Cj4gLQlpZiAoZXJyKQo+IC0JCXJldHVybiBlcnI7
Cj4gKwlpZiAoIWhhc19hY3BpX2NvbXBhbmlvbigmcGRldi0+ZGV2KSkgewo+ICsJCWkyY19kZXYt
PnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKGkyY19kZXYtPmRldiwgImky
YyIpOwo+ICsJCWlmIChJU19FUlIoaTJjX2Rldi0+cnN0KSkgewo+ICsJCQlkZXZfZXJyX3Byb2Jl
KGkyY19kZXYtPmRldiwgUFRSX0VSUihpMmNfZGV2LT5yc3QpLAo+ICsJCQkJICAgICAgImZhaWxl
ZCB0byBnZXQgcmVzZXQgY29udHJvbFxuIik7Cj4gKwkJCXJldHVybiBQVFJfRVJSKGkyY19kZXYt
PnJzdCk7Cj4gKwkJfQo+ICsKPiArCQllcnIgPSB0ZWdyYV9pMmNfaW5pdF9jbG9ja3MoaTJjX2Rl
dik7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0dXJuIGVycjsKPiArCX0KCldoYXQgYWJvdXQgdG8g
ZmFjdG9yIG91dCB0aGUgcmVzZXQgaW5pdGlhbGl6YXRpb24gaW50byBhIHNlcGFyYXRlIGZ1bmN0
aW9uIGFuZCB3cml0ZSBpdCBsaWtlIHRoaXM6CgpzdGF0aWMgaW50IHRlZ3JhX2kyY19pbml0X3Jl
c2V0KGkyY19kZXYpCnsKCWlmIChoYXNfYWNwaV9jb21wYW5pb24oaTJjX2Rldi0+ZGV2KQoJCXJl
dHVybiAwOwoKCWkyY19kZXYtPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZl
KGkyY19kZXYtPmRldiwgImkyYyIpOwoJaWYgKElTX0VSUihpMmNfZGV2LT5yc3QpKQoJCXJldHVy
biBkZXZfZXJyX3Byb2JlKGkyY19kZXYtPmRldiwgUFRSX0VSUihpMmNfZGV2LT5yc3QpLAoJCQkg
ICAgICAJICAgICAiZmFpbGVkIHRvIGdldCByZXNldCBjb250cm9sXG4iKTsKCglyZXR1cm4gMDsK
fQoKQW5kIHRoZW4gY2hhbmdlIHRlZ3JhX2kyY19pbml0X2Nsb2NrcygpIHRvOgoKc3RhdGljIGlu
dCB0ZWdyYV9pMmNfaW5pdF9jbG9ja3MoaTJjX2RldikKewoJaW50IGVycjsKCglpZiAoaGFzX2Fj
cGlfY29tcGFuaW9uKGkyY19kZXYtPmRldikpCgkJcmV0dXJuIDA7CgoJLi4uCn0KClRoaXMgd2ls
bCBtYWtlIGJvdGggcmVzZXQvY2xvY2tzIGluaXRpYWxpemF0aW9uIHRvIGxvb2sgbW9yZSBjb25z
aXN0ZW50LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
