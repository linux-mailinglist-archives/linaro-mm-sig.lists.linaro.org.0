Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 599E547E0BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Dec 2021 10:11:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C731461023
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Dec 2021 09:11:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A02E7610F1; Thu, 23 Dec 2021 09:11:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E694861035;
	Thu, 23 Dec 2021 09:11:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D57D6101D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Dec 2021 09:11:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2B32661035; Thu, 23 Dec 2021 09:11:26 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 233E06101D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Dec 2021 09:11:24 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 p1-20020a1c7401000000b00345c2d068bdso2743200wmc.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Dec 2021 01:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=E8oqCDxQAAUPB0dz/BCO4AOd3xZwCZLLVDd5QYYb2Ac=;
 b=IJrbSDmmwV9i4FGK8bAvQzi/bUWaAq1ASy2S7tx2Y4uYryn+dpBxqtzA6SSwkCRRP8
 5ktTkCtisSYvT/BZka6GG5eIUm71FfT90T90YRjMrWFgU3LJdm8Ga+KYEts+wQTbgpiO
 5RvIIB4yopIAO1U9auSTRhb1DsdKb08hz0DHKSEV9xBqC+g+JU1n5rzAkGCQVFNlTTTg
 8scnFPCWkrlXLY3SfFL/40lyUeETvLtlKAGUuML9bFUd6E1uppKaL3p15EFdF3Hj4i2a
 drBmmIkw0xBXVYO/8WMLmI3w4vEi2d7HcclVDcoBIuAhi/B/MQJt0t7NPi+mU698k2f7
 RvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=E8oqCDxQAAUPB0dz/BCO4AOd3xZwCZLLVDd5QYYb2Ac=;
 b=F7lJBb7YvcJQzad0/IMmARlo1XwFBNK7jTUrv3pZMn5UbVAF7+YHk/qxIy3ZiS3l3r
 8u5IvIGUOC3xmbIqchWBjigu5QpdrEohMrP6akD6ws6BjsSDVD4sltEE6IdFmXYJhlAH
 o0beq4NlbQPlGNuYH5izKEW80hwP5gwdaWWUUnSVHfJwj6qGWCxBAxAVzyeNh6hNeyzY
 s8Hnpc6kAHv4t2/TXS2T+FyYqSr7OWUYGaB7g8+cesVHEeZtst62CBzkwAtMCWCkJjg/
 T+XykBXqsKYieSZiQxNRydZkxfF8YoKn1eqNxne8THXdqBzbYCDFT0vTgEjRQAZuKJsU
 Vwhg==
X-Gm-Message-State: AOAM532CmFIk0eAQHFJCDa/4ycabvigoXupRSaggL+BgOjdInKkUivNs
 iqWUXt/m1kS5nvU8qF4njrqWB85yIzE=
X-Google-Smtp-Source: ABdhPJzGl/qU+hk5aBABASio9ZLh9n+ZQxW0Tjdu/bqiIhAdRejLvEY9REe3X/CnyCl9Z/6ZNjrVbA==
X-Received: by 2002:a1c:23d2:: with SMTP id j201mr1118161wmj.76.1640250683229; 
 Thu, 23 Dec 2021 01:11:23 -0800 (PST)
Received: from [192.168.178.21] (p57b0bff8.dip0.t-ipconnect.de.
 [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id k13sm4280339wri.6.2021.12.23.01.11.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Dec 2021 01:11:22 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <e8c7284f-e18e-0dcc-f0a2-3a1ad6222fd4@gmail.com>
 <YcOkB0Jlc5KsHnEN@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c63e62cc-e48e-2e81-571c-498e4d16fd21@gmail.com>
Date: Thu, 23 Dec 2021 10:11:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YcOkB0Jlc5KsHnEN@phenom.ffwll.local>
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMTIuMjEgdW0gMjM6MTcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgRGVj
IDE3LCAyMDIxIGF0IDAzOjM5OjUyUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEhpIERhbmllbCwKPj4KPj4gbG9va3MgbGlrZSB0aGlzIGlzIGdvaW5nIG5vd2hlcmUgYW5kIHlv
dSBkb24ndCBzZWVtIHRvIGhhdmUgdGltZSB0byByZXZpZXcuCj4+Cj4+IFdoYXQgY2FuIHdlIGRv
Pwo+IGNjIG1vcmUgcGVvcGxlLCB5b3UgZGlkbid0IGNjIGFueSBvZiB0aGUgZHJpdmVyIGZvbGtz
IDotKQoKV2VsbCBJJ3ZlIENDZWQgbW9yZSBwZW9wbGUgYW5kIGxpc3RzIGFuZCB0aGUgZmlyc3Qg
cm91bmQgb2YgdGhlIHBhdGNoZXMuIApKdXN0IHdhbnRlZCB0byBnZXQgc29tZSBtb3JlIGNvbW1l
bnRzIGZyb20geW91IGZpcnN0IGJlZm9yZSB3aWRlbmluZyB0aGUgCmF1ZGllbmNlLgoKPiBBbHNv
IEkgZGlkIGZpbmQgc29tZSByZXZpZXcgYmVmb3JlIEkgZGlzYXBwZWFyZWQsIGJhY2sgb24gMTB0
aCBKYW4uCgpHb29kLCB0aGVuIEkgaGF2ZSBhdCBsZWFzdCBzb21ldGhpbmcgdG9kbyBmb3IgdGhl
IGZpcnN0IHdlZWsgb24gSmFudWFyeS4KCkhhcHB5IGhvbGlkYXlzLApDaHJpc3RpYW4uCgo+Cj4g
Q2hlZXJzLCBEYW5pZWwKPgo+PiBUaGFua3MsCj4+IENocmlzdGlhbi4KPj4KPj4gQW0gMDcuMTIu
MjEgdW0gMTM6MzMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+Pj4gSGkgRGFuaWVsLAo+Pj4K
Pj4+IGp1c3QgYSBnZW50bGUgcGluZyB0aGF0IHlvdSB3YW50ZWQgdG8gdGFrZSBhIGxvb2sgYXQg
dGhpcy4KPj4+Cj4+PiBOb3QgbXVjaCBjaGFuZ2VkIGNvbXBhcmVkIHRvIHRoZSBsYXN0IHZlcnNp
b24sIG9ubHkgYSBtaW5vciBidWdmaXggaW4KPj4+IHRoZSBkbWFfcmVzdl9nZXRfc2luZ2xldG9u
IGVycm9yIGhhbmRsaW5nLgo+Pj4KPj4+IFJlZ2FyZHMsCj4+PiBDaHJpc3RpYW4uCj4+Pgo+Pj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
