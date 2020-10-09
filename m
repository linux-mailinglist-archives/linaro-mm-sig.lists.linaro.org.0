Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AE82883B8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 09:37:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F413B664F5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 07:37:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DDF5C664FE; Fri,  9 Oct 2020 07:37:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33D496606C;
	Fri,  9 Oct 2020 07:36:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8EE316174C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 07:36:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81B036606C; Fri,  9 Oct 2020 07:36:45 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by lists.linaro.org (Postfix) with ESMTPS id 244506174C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 07:36:44 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id c22so11736231ejx.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 00:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KDyUTK8HE57boREsu/kkQV3gAaTaD15LV09WfHJl7QA=;
 b=C1JO4JlGHDS8/K9TNxhbesvxoqhzCTHyOzApluIcc5pqt2u6luRSURJWYJXsszRQ0q
 H5ydETvBPhbU8xvscduaZblx7Sc77BNAL0jXZo9/ZIpjfvXfhJOociXU0gr22X1/d3gE
 cEtVmOxZA+dIcMc91DQ4PcaapoK/11W50qyYLM0EZERPU1ZRV6cWTl3BW2SPEQ+DG8Ag
 niZ3mjBW7lFuLzWRKKEGkrRmK2vn2qckhas8uQPEdYuetrY48dcD0VrzD7Cj0Ua+kKVl
 4UzowuZ5y129XXXuHYOo3B0FpTUTmT5k+dqtcOQItnB2eUewE9+r7fgEX8MQV15ecZiz
 A7Jw==
X-Gm-Message-State: AOAM530tU/6n14Rts4SCyBQewzKqKpXr3FF1WklmomqyU1iy0RsHx7EO
 7oe94rtVrgIo9+vFWGOacU8=
X-Google-Smtp-Source: ABdhPJwmLU0/zFy/biwCWPdlbly4yd8EXZvqkIyBmFwrU0xdwElcWIp7GYrCCXyxceMhCvEZZAAqtw==
X-Received: by 2002:a17:906:68c4:: with SMTP id
 y4mr13159828ejr.197.1602229003288; 
 Fri, 09 Oct 2020 00:36:43 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id w25sm5360262ejy.123.2020.10.09.00.36.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 00:36:42 -0700 (PDT)
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, sumit.semwal@linaro.org
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008112342.9394-2-christian.koenig@amd.com>
 <20201008140914.GF438822@phenom.ffwll.local>
 <20201008141419.GH438822@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6cc96549-2724-6849-0f38-0de60ed6989c@gmail.com>
Date: Fri, 9 Oct 2020 09:36:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201008141419.GH438822@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/prime: document that use the
 page array is deprecated
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
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

QW0gMDguMTAuMjAgdW0gMTY6MTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFRodSwgT2N0
IDA4LCAyMDIwIGF0IDA0OjA5OjE0UE0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IE9u
IFRodSwgT2N0IDA4LCAyMDIwIGF0IDAxOjIzOjQwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6Cj4+PiBXZSBoYXZlIHJlb2NjdXJyaW5nIHJlcXVlc3RzIG9uIHRoaXMgc28gYmV0dGVy
IGRvY3VtZW50IHRoYXQKPj4+IHRoaXMgYXBwcm9hY2ggZG9lc24ndCB3b3JrIGFuZCBkbWFfYnVm
X21tYXAoKSBuZWVkcyB0byBiZSB1c2VkIGluc3RlYWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4gLS0tCj4+PiAg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8IDcgKysrKysrLQo+Pj4gICAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
Ywo+Pj4gaW5kZXggNDkxMGM0NDZkYjgzLi4xNmZhMmJmYzI3MWUgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
cHJpbWUuYwo+Pj4gQEAgLTk1Niw3ICs5NTYsNyBAQCBFWFBPUlRfU1lNQk9MKGRybV9nZW1fcHJp
bWVfaW1wb3J0KTsKPj4+ICAgLyoqCj4+PiAgICAqIGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJf
YXJyYXlzIC0gY29udmVydCBhbiBzZyB0YWJsZSBpbnRvIGEgcGFnZSBhcnJheQo+Pj4gICAgKiBA
c2d0OiBzY2F0dGVyLWdhdGhlciB0YWJsZSB0byBjb252ZXJ0Cj4+PiAtICogQHBhZ2VzOiBvcHRp
b25hbCBhcnJheSBvZiBwYWdlIHBvaW50ZXJzIHRvIHN0b3JlIHRoZSBwYWdlIGFycmF5IGluCj4+
PiArICogQHBhZ2VzOiBkZXByZWNhdGVkIGFycmF5IG9mIHBhZ2UgcG9pbnRlcnMgdG8gc3RvcmUg
dGhlIHBhZ2UgYXJyYXkgaW4KPj4+ICAgICogQGFkZHJzOiBvcHRpb25hbCBhcnJheSB0byBzdG9y
ZSB0aGUgZG1hIGJ1cyBhZGRyZXNzIG9mIGVhY2ggcGFnZQo+Pj4gICAgKiBAbWF4X2VudHJpZXM6
IHNpemUgb2YgYm90aCB0aGUgcGFzc2VkLWluIGFycmF5cwo+Pj4gICAgKgo+Pj4gQEAgLTk2NSw2
ICs5NjUsMTEgQEAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaW1lX2ltcG9ydCk7Cj4+PiAgICAq
Cj4+PiAgICAqIERyaXZlcnMgY2FuIHVzZSB0aGlzIGluIHRoZWlyICZkcm1fZHJpdmVyLmdlbV9w
cmltZV9pbXBvcnRfc2dfdGFibGUKPj4+ICAgICogaW1wbGVtZW50YXRpb24uCj4+PiArICoKPj4+
ICsgKiBTcGVjaWZ5aW5nIHRoZSBwYWdlcyBhcnJheSBpcyBkZXByZWNhdGVkIGFuZCBzdHJvbmds
eSBkaXNjb3VyYWdlZCBmb3IgbmV3Cj4+PiArICogZHJpdmVycy4gVGhlIHBhZ2VzIGFycmF5IGlz
IG9ubHkgdXNlZnVsIGZvciBwYWdlIGZhdWx0cyBhbmQgdGhvc2UgY2FuCj4+PiArICogY29ycnVw
dCBmaWVsZHMgaW4gdGhlIHN0cnVjdCBwYWdlIGlmIHRoZXkgYXJlIG5vdCBoYW5kbGVkIGJ5IHRo
ZSBleHBvcnRpbmcKPj4+ICsgKiBkcml2ZXIuCj4+PiAgICAqLwo+PiBJJ2QgbWFrZSB0aGlzIGEg
X2xvdF8gc3Ryb25nZXI6IEFzaWRlIGZyb20gYW1kZ3B1IGFuZCByYWRlb24gYWxsIGRyaXZlcnMK
Pj4gdXNpbmcgdGhpcyBvbmx5IG5lZWQgaXQgZm9yIHRoZSBwYWdlcyBhcnJheS4gSW1vIGp1c3Qg
b3Blbi1jb2RlIHRoZSBzZwo+PiB0YWJsZSB3YWxraW5nIGxvb3AgaW4gYW1kZ3B1L3JhZGVvbiAo
aXQncyByZWFsbHkgbm90IG11Y2ggY29kZSksIGFuZCB0aGVuCj4+IGRyb3AgdGhlIGRtYV9hZGRy
X3QgcGFyYW1ldGVyIGZyb20gdGhpcyBmdW5jdGlvbiBoZXJlIChpdCdzIHNldCB0byBOVUxMIGJ5
Cj4+IGV2ZXJ5b25lIGVsc2UpLgo+Pgo+PiBBbmQgdGhlbiBkZXByZWNhdGUgdGhpcyBlbnRpcmUg
ZnVuY3Rpb24gaGVyZSB3aXRoIGEgYmlnIHdhcm5pbmcgdGhhdCBhKQo+PiBkbWFfYnVmX21hcF9h
dHRhY2htZW50IGlzIGFsbG93ZWQgdG8gbGVhdmUgdGhlIHN0cnVjdCBwYWdlIHBvaW50ZXJzIE5V
TEwKPj4gYW5kIGIpIHRoaXMgYnJlYWtzIG1tYXAsIHVzZXJzIG11c3QgY2FsbCBkbWFfYnVmX21t
YXAgaW5zdGVhZC4KPj4KPj4gQWxzbyBtYXliZSBtYWtlIGl0IGFuIHVwcGVyY2FzZSBERVBSRUNB
VEVEIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgOi0pCj4gT0sgSSBqdXN0IHJlYWxpemVkIEkgbWlz
c2VkIG5vdXZlYXUuIFRoYXQgd291bGQgYmUgMyBwbGFjZXMgd2hlcmUgd2UgbmVlZAo+IHRvIHN0
dWZmIHRoZSBkbWFfYWRkcl90IGxpc3QgaW50byBzb21ldGhpbmcgdHRtIGNhbiB0YWtlLiBTdGls
bCBmZWVscwo+IGJldHRlciB0aGFuIHRoaXMgaGFsZi1kZXByZWNhdGVkIGZ1bmN0aW9uIGtsdWRn
ZSAuLi4KCk1obSwgSSBkb24ndCBzZWUgYSByZWFzb24gd2h5IG5vdXZlYXUgd291bGQgbmVlZCB0
aGUgc3RydWN0IHBhZ2UgZWl0aGVyLgoKSG93IGFib3V0IHdlIHNwbGl0IHRoYXQgdXAgaW50byB0
d28gZnVuY3Rpb24/CgpPbmUgZm9yIGNvbnZlcnRpbmcgdGhlIHNnX3RhYmxlIGludG8gYSBsaW5l
YXIgZG1hX2FkZHIgYXJyYXkuCgpBbmQgb25lIGZvciBjb252ZXJ0aW5nIHRoZSBzZ190YWJsZSBp
bnRvIGEgbGluZWFyIHN0cnVjdCBwYWdlIGFycmF5IHdpdGggCmEgX19kZXByZWNhdGVkIGF0dHJp
YnV0ZSBvbiBpdD8KCkNocmlzdGlhbi4KCj4gLURhbmllbAo+Cj4+IC1EYW5pZWwKPj4KPj4+ICAg
aW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHN0cnVjdCBzZ190YWJsZSAqc2d0
LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+Pj4gICAJCQkJICAgICBkbWFfYWRkcl90ICphZGRycywg
aW50IG1heF9lbnRyaWVzKQo+Pj4gLS0gCj4+PiAyLjE3LjEKPj4+Cj4+IC0tIAo+PiBEYW5pZWwg
VmV0dGVyCj4+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+PiBodHRwOi8v
YmxvZy5mZndsbC5jaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
