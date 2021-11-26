Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AB32445E3DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 02:02:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E44662174
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 01:02:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 661D361F0D; Fri, 26 Nov 2021 01:02:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28E7E60F1E;
	Fri, 26 Nov 2021 01:02:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4DDCA60B03
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 01:02:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41ACB60F1E; Fri, 26 Nov 2021 01:02:45 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by lists.linaro.org (Postfix) with ESMTPS id 3B2F260B03
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 01:02:43 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id 207so15463927ljf.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 17:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d5eybHUeaAVMy2um3rYiSgMu1qvMcc0ni9BDBOieeBo=;
 b=L+idWAu/GRgivG969p6gm/LH2qCEWB+i5m44beTgr6Uwa6hzdF2k4qBXhNZeLU6USE
 AChTYSdb57Vipf33dqjoqCKu1B+j/3EdyNxE5ANPzoyzy+oQH7DItcOOPiRN+nBk6eln
 8vcYABfJvDkeBwWC3fOVs5RcaHdQB0We53YH82o2z1iLmpNx7s50b0+/P9aMv7k1uYBq
 g+l7gx5pk1mJEwMf+kGfYz4+xFF4dHaybX0F6HJASGO3/nx4QKR0vbOkxR5UTV1Eq56L
 5L+D/+ft8wytUEy1smK5cMwSCidZTxDJ0slNHrk6jafsCTGdF1tbyrPZeqewO9cssL2x
 X6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d5eybHUeaAVMy2um3rYiSgMu1qvMcc0ni9BDBOieeBo=;
 b=ew5jOT8DiT+WwiibAl4zlUCmp482cqWoS1gBo3PSUcp3Y/zQmVyJaSCyu3ciq5Jwq8
 ABCoHV2o4AxhiHM+H8zDEymkkyoAy2lop2t2JsSz9P5C83fEwO6r4cWfSpyk9u92g/Z+
 fL3PN9yarSdm62EWHzmLE3O1pejcgL7NYAWGrI89cQJ77wh1mbSLKWpvcGhQnSSCnWfN
 P2MDvDdWpbBeMmagvnsvIIgyHdxa/C0UiCx8qbEwRKU1lAQBkjE83ahmpeq3iqyHvxyN
 ZVfpbvdSid/I48SZES4HatW1nY8DAZUMTa/c4fWok8c3bBha6oIEurQ1CsIZ82cVE//3
 XxDw==
X-Gm-Message-State: AOAM53264eYp5YGOU+gJkAnXldj9TNelYOIfo5p+OSqIBtbyPevISY+s
 wjLh+R8weLbdFbqL3j+7cAA=
X-Google-Smtp-Source: ABdhPJwDlHo4lbJIQNIvxCxi52QGGUiKS4o/tEWhT6OWWbm2bP2UQs/NTgNq7wKFmXqO8NiR+HnQ9Q==
X-Received: by 2002:a05:651c:238:: with SMTP id
 z24mr30440552ljn.84.1637888562022; 
 Thu, 25 Nov 2021 17:02:42 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id f6sm363021ljm.48.2021.11.25.17.02.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 17:02:41 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>
References: <1637859224-5179-1-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <08781b22-2d96-6605-06ea-6911a4837474@gmail.com>
Date: Fri, 26 Nov 2021 04:02:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1637859224-5179-1-git-send-email-akhilrajeev@nvidia.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4] i2c: tegra: Add the ACPI support
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, linaro-mm-sig@lists.linaro.org,
 andy.shevchenko@gmail.com, ldewangan@nvidia.com, thierry.reding@gmail.com,
 linux-i2c@vger.kernel.org, p.zabel@pengutronix.de, linux-tegra@vger.kernel.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MjUuMTEuMjAyMSAxOTo1MywgQWtoaWwgUiDQv9C40YjQtdGCOgo+IEFkZCBzdXBwb3J0IGZvciB0
aGUgQUNQSSBiYXNlZCBkZXZpY2UgcmVnaXN0cmF0aW9uIHNvIHRoYXQgdGhlIGRyaXZlcgo+IGNh
biBiZSBhbHNvIGVuYWJsZWQgdGhyb3VnaCBBQ1BJIHRhYmxlLgo+IAo+IFRoaXMgZG9lcyBub3Qg
aW5jbHVkZSB0aGUgQUNQSSBzdXBwb3J0IGZvciBUZWdyYSBWSSBhbmQgRFZDIEkyQy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBa2hpbCBSIDxha2hpbHJhamVldkBudmlkaWEuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3JhLmMgfCA1MiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQo+IAo+IHY0IGNoYW5nZXM6Cj4gICAqIGNoYW5nZWQgaGFzX2FjcGlf
Y29tcGFuaW9uIHRvIEFDUElfSEFORExFIGZvciBjb25zaXN0ZW5jeSBhY3Jvc3MgCj4gICAgIGFs
bCBmdW5jdGlvbnMKPiB2MyAtIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIxLzExLzI1LzE3Mwo+
IHYyIC0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjEvMTEvMjMvODIKPiB2MSAtIGh0dHBzOi8v
bGttbC5vcmcvbGttbC8yMDIxLzExLzE5LzM5MwoKQW5keSBzdWdnZXN0ZWQgdG8gbWFrZSB2NSB3
aXRoIGV4dHJhIHBhdGNoIHRoYXQgd2lsbCBtYWtlIHVzZSBvZiB0aGUKZ2VuZXJpYyBpMmNfdGlt
aW5ncywgYnV0IGl0IHNob3VsZCBiZSBhIHNlcGFyYXRlIGNoYW5nZS4KClRoaXMgcGF0Y2ggaXMg
Z29vZCB0byBtZS4gUGxlYXNlIHByb3ZpZGUgdGhlIGZ1bGwgY2hhbmdlbG9nIGZvciBlYWNoCnZl
cnNpb24gbmV4dCB0aW1lLCBpbnN0ZWFkIG9mIHRoZSBsaW5rcy4gVGhhbmtzIQoKSWYgeW91J2xs
IG1ha2UgdjUsIHRoZW4gZmVlbCBmcmVlIHRvIGFkZCBteSByLWI6CgpSZXZpZXdlZC1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
