Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B7E86495
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 16:42:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F4ED61786
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 14:42:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4300661789; Thu,  8 Aug 2019 14:42:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87899616F4;
	Thu,  8 Aug 2019 14:41:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 84F8360C21
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 14:41:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6EB0D616F4; Thu,  8 Aug 2019 14:41:43 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 6C8D760C21
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 14:41:42 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x1so45295039wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Aug 2019 07:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6NDaOaK+lPHzVLm5kwctWvg1wxbUKGg20Vx9wAxik2g=;
 b=QYwEdXCqAuz+JUvIVqRLJRobudfv6XUi++iVYdoDFsHXgQBiwRmPiwkzGU7CnrMxL6
 dTnEuZtAQAs9wq2j4UrZFRncxOIRh2BS6wlD4vkMiElrlJn7j5HFwLld04gNJGTlYmqC
 4ApcOwLTA2bRO2XmHIWKwMNDwyArFCi2+nfDE6ZUB8iyi4gKDF34Ux5L2VtkqTWW9tsm
 bLhdrAk8C2L4021/MDM5h+AT0V/mAztMAouibfwRufkYYx5bz0xnOylL4J5Gc+K45Roe
 IeKwD9cZOz3ZzxaCE4FA9yN2nJ0iN2fOMU4ND/bSqInvw/tktrmxthXmwbPGPqQ5USKf
 Rabg==
X-Gm-Message-State: APjAAAVCGEDZm4pNjxtuCpG4R3DSW9fp+FIDD2WqKUpl4In2PlC7aeub
 np1V4Wq/WS2tL0Gn0Vxir9s=
X-Google-Smtp-Source: APXvYqxHZuszQMlKeoaZhBkounSzWIdH7hVAn91In72k0rh+4vdAHYlxu1aF+KBmWN/Rjug5sAX40Q==
X-Received: by 2002:a5d:428b:: with SMTP id k11mr16707653wrq.174.1565275301627; 
 Thu, 08 Aug 2019 07:41:41 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id d17sm2567868wrm.52.2019.08.08.07.41.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 07:41:40 -0700 (PDT)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>
References: <20190808132243.23632-1-christian.koenig@amd.com>
Message-ID: <4e32c47b-454c-f811-67cc-6757b48918de@gmail.com>
Date: Thu, 8 Aug 2019 16:41:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808132243.23632-1-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
	smaller v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

RGFuaWVsIGFueSBtb3JlIGNvbW1lbnRzIG9uIHRoaXMgb25lPwoKSWYgbm90IEknbSBnb2luZyB0
byBwdXNoIGl0LgoKQ2hyaXN0aWFuLgoKQW0gMDguMDguMTkgdW0gMTU6MjIgc2NocmllYiBDaHJp
c3RpYW4gS8O2bmlnOgo+IFdlIGNsZWFyIHRoZSBjYWxsYmFjayBsaXN0IG9uIGtyZWZfcHV0IHNv
IHRoYXQgYnkgdGhlIHRpbWUgd2UKPiByZWxlYXNlIHRoZSBmZW5jZSBpdCBpcyB1bnVzZWQuIE5v
IG9uZSBzaG91bGQgYmUgYWRkaW5nIHRvIHRoZSBjYl9saXN0Cj4gdGhhdCB0aGV5IGRvbid0IHRo
ZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3IuCj4KPiBUaGlzIHNtYWxsIGNoYW5nZSBpcyBh
Y3R1YWxseSBtYWtpbmcgdGhlIHN0cnVjdHVyZSAxNiUgc21hbGxlci4KPgo+IHYyOiBhZGQgdGhl
IGNvbW1lbnQgdG8gdGhlIGNvZGUgYXMgd2VsbC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oIHwgMTAgKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAo+IGluZGV4IDA1ZDI5ZGJjN2U2
Mi4uYmVhMWQwNWNmNTFlIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gQEAgLTY1LDggKzY1LDE0IEBAIHN0
cnVjdCBkbWFfZmVuY2VfY2I7Cj4gICBzdHJ1Y3QgZG1hX2ZlbmNlIHsKPiAgIAlzdHJ1Y3Qga3Jl
ZiByZWZjb3VudDsKPiAgIAljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOwo+IC0Jc3Ry
dWN0IHJjdV9oZWFkIHJjdTsKPiAtCXN0cnVjdCBsaXN0X2hlYWQgY2JfbGlzdDsKPiArCS8qIFdl
IGNsZWFyIHRoZSBjYWxsYmFjayBsaXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUg
d2UKPiArCSAqIHJlbGVhc2UgdGhlIGZlbmNlIGl0IGlzIHVudXNlZC4gTm8gb25lIHNob3VsZCBi
ZSBhZGRpbmcgdG8gdGhlIGNiX2xpc3QKPiArCSAqIHRoYXQgdGhleSBkb24ndCB0aGVtc2VsdmVz
IGhvbGQgYSByZWZlcmVuY2UgZm9yLgo+ICsJICovCj4gKwl1bmlvbiB7Cj4gKwkJc3RydWN0IHJj
dV9oZWFkIHJjdTsKPiArCQlzdHJ1Y3QgbGlzdF9oZWFkIGNiX2xpc3Q7Cj4gKwl9Owo+ICAgCXNw
aW5sb2NrX3QgKmxvY2s7Cj4gICAJdTY0IGNvbnRleHQ7Cj4gICAJdTY0IHNlcW5vOwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
