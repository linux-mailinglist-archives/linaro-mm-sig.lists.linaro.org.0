Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A2A8CC5BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2024 19:41:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD24E3F4A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2024 17:41:02 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by lists.linaro.org (Postfix) with ESMTPS id A18E23F4A1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2024 17:40:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=343llXKx;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.177 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso4413405276.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2024 10:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716399652; x=1717004452; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+KExuXY6x2RNXAGihFUdQFtzxyzRd1UAydMgLYyZeM=;
        b=343llXKxF1zxmdbGgdLmh1z3z9ph83YbkCEvr6yjqhoi0dZyWwhbI6PbY3Wrq2A/lh
         rFg4APqzmjNLvNt+Ig4Is/hLWyyMLpF+7Ohd0p83m37t+nQUaUF4CjfbLi/waI5PFlp0
         jrD9HwVEP3/yD49N7eliYSJuuEzKr6zctkMLaRBOjgNBVQQfPw9+gn0R+FSrnWQ28WmF
         MoAKK73RN35xhL245bGu+i0Lp4bTP4z7inI6o413nNZraQl0e0N6+poZKOXbxNKUZvrq
         QS+CsgiTjOjwWrlb5AgDNzwqmH9aLd70YaanmlPjYIyYK3T9RYb4hlE0THeqgocY/4OP
         /iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716399652; x=1717004452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m+KExuXY6x2RNXAGihFUdQFtzxyzRd1UAydMgLYyZeM=;
        b=vDwDta7BzCdj9QtxkX3KFEkJl8kS+L4Y4yV3jWs5XaM8B7F0NNW0d79F1OJAfISqps
         SKgN6H66+N2AWlIbKLuVgE2+DDYyWZGOobblpveBELhO6wF8hWVq34uKatUfMyA8Obrf
         C3P4qLCdbEN+VixFBYB5zrMoNfl1U9sDkgqHmaT0F2iDdquyvlKRYIpgD8exgzNPmoKi
         O5xs5gpQpdtGuETV3Ysrl5txxicMp/o6hOUw6LWmL+1I8bz701Tgguecn6dmwLWVFmUy
         LHHIi/6drW/id3OyStYZeZZ5DL63NsrR5RrwRr26w6aOZ2MooXUiz7EON8vL/ho75XTP
         zaMg==
X-Forwarded-Encrypted: i=1; AJvYcCXn6KHjN0ZTbCP6jJl99qIke5fjNIuGebJYwbUPRiTkSjhZ3sWdlqf9tEvpaCloQqnf9iEkGl1J2hB8jHyoaBQjHS66Qre1AfP+TlSzEzM=
X-Gm-Message-State: AOJu0Yz4iMolaqDqGoCZmebCstjSfGgnpjzF+bhqTBLb+Emrc70Dvvgq
	OGDpnxqFDKS6xvohYtp759ph2jOSl8NtGxtpzz3J1+v9ivSmSUfsDeT4FcWGwahceo4L3+98epg
	bZckn5feqozGM1V9uFLdJEE4U3x/HN4+7LC50
X-Google-Smtp-Source: AGHT+IFEar4omGEdEg7p1pIeJHpqJdxEZysSMoFwL4CvUt49f3bponvnO1J/Gp3qNrH1hFjfFb/lUdHwXQMMQUkAlvw=
X-Received: by 2002:a25:e08c:0:b0:de4:5d85:6928 with SMTP id
 3f1490d57ef6-df4e0bc6db1mr3041714276.31.1716399651838; Wed, 22 May 2024
 10:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240522122326.696928-1-pchelkin@ispras.ru>
In-Reply-To: <20240522122326.696928-1-pchelkin@ispras.ru>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 22 May 2024 10:40:39 -0700
Message-ID: <CABdmKX2tb_Vn8sF_hXVOMZ7HV9cU9KMwu_WyKrJuoeNjWF85bQ@mail.gmail.com>
To: Fedor Pchelkin <pchelkin@ispras.ru>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A18E23F4A1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.177:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: XKUSUWFKBVHUO2SNPKCBX4CWY6JISG7V
X-Message-ID-Hash: XKUSUWFKBVHUO2SNPKCBX4CWY6JISG7V
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Chris Wilson <chris@chris-wilson.co.uk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Alexey Khoroshilov <khoroshilov@ispras.ru>, lvc-project@linuxtesting.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: handle testing kthreads creation failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKUSUWFKBVHUO2SNPKCBX4CWY6JISG7V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjIsIDIwMjQgYXQgNToyNOKAr0FNIEZlZG9yIFBjaGVsa2luIDxwY2hlbGtp
bkBpc3ByYXMucnU+IHdyb3RlOg0KPg0KPiBrdGhyZWFkIGNyZWF0aW9uIG1heSBwb3NzaWJseSBm
YWlsIGluc2lkZSByYWNlX3NpZ25hbF9jYWxsYmFjaygpLiBJbg0KPiBzdWNoIGNhc2Ugc3RvcCB0
aGUgYWxyZWFkeSBzdGFydGVkIHRocmVhZHMgYW5kIHJldHVybiB3aXRoIGVycm9yIGNvZGUuDQo+
DQo+IEZvdW5kIGJ5IExpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIgKGxpbnV4dGVzdGluZy5vcmcp
Lg0KPg0KPiBGaXhlczogMjk4OWY2NDUxMDg0ICgiZG1hLWJ1ZjogQWRkIHNlbGZ0ZXN0cyBmb3Ig
ZG1hLWZlbmNlIikNCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU2lnbmVkLW9mZi1i
eTogRmVkb3IgUGNoZWxraW4gPHBjaGVsa2luQGlzcHJhcy5ydT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA2ICsrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1m
ZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+IGluZGV4IGI3YzZmN2Vh
OWUwYy4uYWIxZWM0NjMxNTc4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1h
LWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+IEBAIC01
NDAsNiArNTQwLDEyIEBAIHN0YXRpYyBpbnQgcmFjZV9zaWduYWxfY2FsbGJhY2sodm9pZCAqYXJn
KQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICB0W2ldLmJlZm9yZSA9IHBhc3M7DQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHRbaV0udGFzayA9IGt0aHJlYWRfcnVuKHRocmVhZF9zaWduYWxf
Y2FsbGJhY2ssICZ0W2ldLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiZG1hLWZlbmNlOiVkIiwgaSk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGlmIChJU19FUlIodFtpXS50YXNrKSkgew0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJldCA9IFBUUl9FUlIodFtpXS50YXNrKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB3aGlsZSAoLS1pID49IDApDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBrdGhyZWFkX3N0b3AodFtpXS50YXNrKTsNCg0KVGhpcyBsb29rcyBsaWtlIGl0
IG5lZWRzIHRvIGJlIGt0aHJlYWRfc3RvcF9wdXQgc2luY2UgZ2V0X3Rhc2tfc3RydWN0DQp3YXMg
Y2FsbGVkIGZvciBwcmV2aW91cyBzdWNjZXNzZnVsIGt0aHJlYWRfcnVuIGNhbGxzLg0KDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgfQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICBnZXRfdGFza19zdHJ1Y3Qo
dFtpXS50YXNrKTsNCj4gICAgICAgICAgICAgICAgIH0NCj4NCj4gLS0NCj4gMi4zOS4yDQo+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
