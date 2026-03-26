Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLSVF8Ni5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7EE4314D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD134404FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:41 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 049A43F735
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 15:37:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b="IKWm+/O/";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of aliceryhl@google.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=aliceryhl@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43b983bb07eso349433f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 08:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774539441; cv=none;
        d=google.com; s=arc-20240605;
        b=RFK5My8HNnf61rpayP26jvbcrHSzvDb+80VhmsfEs3Kn4KHl1188EDNkU/2m+53pbO
         VNaEFSAOU43f7Yo6afzJptxXdgwJEAACJCazhz+Ods62uBxSjI/1qEKqDIf0YpQx+B1R
         /jpjPBqewKfmzgDeqC4KPXgfp3i2OvmAAi+ZipXENUmQ9Sz0zHuwzJYxtwVcXrlsNQH4
         O3HcqDAiYxqE1gK6j/bUgRaKisfqq4d81fzD0ngrasgPSKOZ4GTpGC0voLr4Zget2CzN
         o2/DtLfhGFtw9VX8lZIQdxVDXG60B8nCwef6YPUG+GrApxAFH1plb19I9WC9SzL1uXfq
         YmVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NWeLPeCEOISYEMuHk4klgF1pcPKiVi4mEhvhikoMf4E=;
        fh=v3T9KOTgaqkL72BRSRHc7aTZE2OipupzqT7CHCTIR9Y=;
        b=kk/lIaitEyuagvA9B0ppsf1R0dKrP+qK74o2j159dXrQs4sv9zjTOwPkLprUwONlAu
         P48GzVkgZ7RlrIT9Tz3fAw/7fLqm5oumFmPDeJyzKovmyhG6NwPMjMah22yB/FI81CLS
         wFckRTXsm+DQ9cBanUH233k9yHr9+2KocGyEIUNdvPqqhU46iKmTbdpFNODe7Qzkw8qB
         Mn/HJDfEl96mOLmR+QBBVyiEuhJQMHN9BQj7GZu1ieIP3rd5g5DLwZfAznnR5UJ/LL6O
         P7NtKk+jKFZdQ3hCEMf5sj7CdtokyMlLGXfLrCyFocvzBjr1L4GRSzAS5IGBBPTaqmmX
         /AMw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774539441; x=1775144241; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWeLPeCEOISYEMuHk4klgF1pcPKiVi4mEhvhikoMf4E=;
        b=IKWm+/O/ivCXfrA3CTlwACZRzcTnRYQ8g2O0B6AIN8ZI+SH/xEsAH/24lX9cpXuNtd
         7aw7bqWxFyWalCz7EMJpp2pMW84wzlkMiPLUoHEgmDwOFKdDHBebxxAOSB+Jxwrl4ym/
         IA2/JQPJ5hKbh91pU2Dn+g83I4Lqj3LdgQPLVwKxM2FiAYq1lSOLZ8YocfhYeoRVq0FL
         c6uBF2G5VxQVkfUj5Cbgo83UCY3+D9DwiCEwJoRL+mfkvWORVaOAqQIFP0leOlD6evgt
         uLZnSnGGhU6IG2peSBIhzSGER3/facZQbPVQZclQC67tvxvag00Xmsh5saFj6VQE2Kz0
         awFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774539441; x=1775144241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NWeLPeCEOISYEMuHk4klgF1pcPKiVi4mEhvhikoMf4E=;
        b=hA0UaTCF1SGO7UDfa0usgXSQXJfvu+VvWtEor0vBg6KteNM3AOKAZvdWK08Xb9E3qr
         vJdeAnRg0HwNs5kKHFTo/bdf71BfG9Ienx7o9kiE+idIIuPLS/je0bfzqIC3jMftmzft
         anbgLXICLzafcfasQKVqmNPxls4Q7odntImGLA7+PrqcjzgcPq9fURNIfXI21p7diCqJ
         4CC1rC6YlLLlHkgjCUkz/o9H9aFo/H8k/OA/GiDkVDX+KeWtxUHruOmeWVxfR+LnQ6vj
         BB+ns1cU/Vb9IUOOzQsfuCT408u66h7IiWPwFVbpGkYU5+aoprvztq7FEQXKxQDpu8bp
         vtOw==
X-Forwarded-Encrypted: i=1; AJvYcCUb84CnwdHf3ED1HX3HiQaSMAMDFJOd4M+uQuE7y9619b8KSWR4kwSWhYExxqRKbG58yFr76C+tiB8dQHe7@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3zk+an+N7la9wQXkM5Ala0/KlP1eFIWwE6PuZ+vZohBwg1s21
	1YCptYFCfqob6hL+wm3gbvUSTsYsLiFwYhlGS0NsVv0QHc5KIUgcT6qZnNLnswwhBZiCO04Ya6j
	2RX3NpapmJ0qISKQOVSjrQcxu0nB5FRD6QTEmEB2l
X-Gm-Gg: ATEYQzwMhDbNUNcyWm2726BPLg/4lS6nae0W235X3owYp4zFjoGw46lqycMaJ614C4L
	RyxYk/GuJflzlk00q9ZgXQfzTm2T/0bPoeub0d6Q6rA1JWQn35pAZBzA5+1SPtODhS6YnBtIF2i
	yQtFUuP8ABCwkfjhSrAZO9Y1GlG+GqZudfHng1ls/f4w5O5y7PD1yY/eMH9pWKDgHBKTRkctYdw
	xh9KueqX7VG5a9k9B36xwIAshVb1l3EEnZ+Qv0pMfvBGpr4gRmU9UYumNnMCEfxMgINvHQzFOQH
	2/Lwa4eU6DLoVL0/Vmg2F22nf4kWPRwMznywQQ==
X-Received: by 2002:a05:6000:220b:b0:43b:8023:8b2 with SMTP id
 ffacd0b85a97d-43b88a25a22mr12525617f8f.45.1774539440336; Thu, 26 Mar 2026
 08:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260316211646.650074-1-lyude@redhat.com> <DHCBEGGPWSVK.30MV8652PV4PY@kernel.org>
In-Reply-To: <DHCBEGGPWSVK.30MV8652PV4PY@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Thu, 26 Mar 2026 16:37:08 +0100
X-Gm-Features: AQROBzAWo8AoJkaNLNO9mq7x8n-1T_o4Q7aKPSl79urjgisqLmie7CjKUZkc8tM
Message-ID: <CAH5fLgifLd5sYQMjXs-154KTJbDcEuy3VE1LY+9YvfNMBWzHbA@mail.gmail.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: ----
X-MailFrom: aliceryhl@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GAIY6KJ3TLGTIOXPHWGZ2JFBO4CJHE2J
X-Message-ID-Hash: GAIY6KJ3TLGTIOXPHWGZ2JFBO4CJHE2J
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:48 +0000
CC: Lyude Paul <lyude@redhat.com>, Miguel Ojeda <ojeda@kernel.org>, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org, Deborah Brouwer <deborah.brouwer@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v9 0/7] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GAIY6KJ3TLGTIOXPHWGZ2JFBO4CJHE2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[601];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.998];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,rust-for-linux.com:url,lists.linaro.org:helo,lists.linaro.org:rdns,pages.freedesktop.org:url]
X-Rspamd-Queue-Id: AE7EE4314D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMjYsIDIwMjYgYXQgMjoxNeKAr0FNIERhbmlsbyBLcnVtbXJpY2ggPGRha3JA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIE1vbiBNYXIgMTYsIDIwMjYgYXQgMTA6MTYgUE0g
Q0VULCBMeXVkZSBQYXVsIHdyb3RlOg0KPiA+IEx5dWRlIFBhdWwgKDUpOg0KPiA+ICAgcnVzdDog
ZHJtOiBBZGQgZ2VtOjppbXBsX2FyZWZfZm9yX2dlbV9vYmohDQo+ID4gICBydXN0OiBnZW06IElu
dHJvZHVjZSBEcml2ZXJPYmplY3Q6OkFyZ3MNCj4NCj4gQXBwbGllZCB0byBkcm0tcnVzdC1uZXh0
LCB0aGFua3MhDQo+DQo+ID4gQXNhaGkgTGluYSAoMik6DQo+ID4gICBydXN0OiBkcm06IGdlbTog
c2htZW06IEFkZCBEUk0gc2htZW0gaGVscGVyIGFic3RyYWN0aW9uDQo+DQo+IEkgd2FzIGFib3V0
IHRvIHBpY2sgdGhpcyBvbmUgdXAgYXMgd2VsbCwgYnV0IGRpZCBydW4gaW50byBxdWl0ZSBzb21l
IGJ1aWxkDQo+IGVycm9ycyBhbmQgd2FybmluZ3MuIEkgZml4ZWQgdGhlbSBhbGwgdXAsIGJ1dCBJ
IGNvbnNpZGVyIHRoaXMgdG9vIGV4Y2Vzc2l2ZSB0bw0KPiBhY3R1YWxseSBhcHBseSB0aGUgcGF0
Y2guIFRoaXMgaXMgdGhlIGNoYW5nZWxvZyBJIGNhbWUgdXAgd2l0aDoNCj4NCj4gICAgIFsgKiBE
Uk1fR0VNX1NITUVNX0hFTFBFUiBpcyBhIHRyaXN0YXRlOyB3aGVuIGEgbW9kdWxlIGRyaXZlciBz
ZWxlY3RzIGl0LA0KPiAgICAgICAgIGl0IGJlY29tZXMgPW0uIFRoZSBSdXN0IGtlcm5lbCBjcmF0
ZSBhbmQgaXRzIEMgaGVscGVycyBhcmUgYWx3YXlzDQo+ICAgICAgICAgYnVpbHQgaW50byB2bWxp
bnV4IGFuZCBjYW4ndCByZWZlcmVuY2Ugc3ltYm9scyBmcm9tIGEgbW9kdWxlLA0KPiAgICAgICAg
IGNhdXNpbmcgbGluayBlcnJvcnMuDQo+DQo+ICAgICAgICAgVGh1cywgYWRkIFJVU1RfRFJNX0dF
TV9TSE1FTV9IRUxQRVIgYm9vbCBLY29uZmlnIHRoYXQgc2VsZWN0cw0KPiAgICAgICAgIERSTV9H
RU1fU0hNRU1fSEVMUEVSLCBmb3JjaW5nIGl0IGJ1aWx0LWluIHdoZW4gUnVzdCBkcml2ZXJzIG5l
ZWQgaXQ7DQo+ICAgICAgICAgdXNlIGNmZyhDT05GSUdfUlVTVF9EUk1fR0VNX1NITUVNX0hFTFBF
UikgZm9yIHRoZSBzaG1lbSBtb2R1bGUuDQo+DQo+ICAgICAgICogQWRkIGNmZ19hdHRyKG5vdChD
T05GSUdfUlVTVF9EUk1fR0VNX1NITUVNX0hFTFBFUiksIGV4cGVjdCh1bnVzZWQpKQ0KPiAgICAg
ICAgIG9uIHB1YihjcmF0ZSkgdXNlIGltcGxfYXJlZl9mb3JfZ2VtX29iaiBhbmQgQmFzZU9iamVj
dFByaXZhdGUsIHNvDQo+ICAgICAgICAgdGhhdCB1bnVzZWQgd2FybmluZ3MgYXJlIHN1cHByZXNz
ZWQgd2hlbiBzaG1lbSBpcyBub3QgZW5hYmxlZC4NCj4NCj4gICAgICAgKiBFbmFibGUgY29uc3Rf
cmVmc190b19zdGF0aWMgKHN0YWJpbGl6ZWQgaW4gMS44MykgdG8gcHJldmVudCBidWlsZA0KPiAg
ICAgICAgIGVycm9ycyB3aXRoIG9sZGVyIGNvbXBpbGVycy4NCj4NCj4gICAgICAgKiBVc2UgJnJh
dyBjb25zdCBmb3IgYmluZGluZ3M6OmRybV9nZW1fc2htZW1fdm1fb3BzIGFuZCBhZGQNCj4gICAg
ICAgICAjW2FsbG93KHVudXNlZF91bnNhZmUsIHJlYXNvbiA9ICJTYWZlIHNpbmNlIFJ1c3QgMS44
Mi4wIildLg0KPg0KPiAgICAgICAqIEZpeCBpbmNvcnJlY3QgQyBIZWFkZXIgcGF0aCBhbmQgbWlu
b3Igc3BlbGxpbmcgYW5kIGZvcm1hdHRpbmcNCj4gICAgICAgICBpc3N1ZXMuDQo+DQo+ICAgICAg
ICogRHJvcCBzaG1lbTo6T2JqZWN0OjpzZ190YWJsZSgpIGFzIHRoZSBjdXJyZW50IGltcGxlbWVu
dGF0aW9uIGlzDQo+ICAgICAgICAgdW5zb3VuZC4NCj4NCj4gICAgICAgICAtIERhbmlsbyBdDQo+
DQo+IFBsZWFzZSBhbHdheXMgY29uc2lkZXIgWzFdIGFuZCBbMl0uDQo+DQo+IFsxXSBodHRwczov
L2RybS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvbWFpbnRhaW5lci10b29scy9jb21taXR0ZXIvY29t
bWl0dGVyLWRybS1ydXN0Lmh0bWwjc3VibWl0LWNoZWNrbGlzdA0KPiBbMl0gaHR0cHM6Ly9ydXN0
LWZvci1saW51eC5jb20vY29udHJpYnV0aW5nI3N1Ym1pdC1jaGVja2xpc3QtYWRkZW5kdW0NCj4N
Cj4gKEBEZWJvcmFoOiBJIGFzc3VtZSB5b3Ugd2VyZSB0ZXN0aW5nIHRoaXMgd2l0aCBUeXIgYnVp
bHQtaW4/KQ0KPg0KPiBATHl1ZGUsIEFsaWNlLCBNaWd1ZWw6IFBsZWFzZSBoYXZlIGEgbG9vayBh
dCB3aGF0IEkgY2FtZSB1cCB3aXRoIGJlbG93Lg0KDQpJdCBsb29rcyBva2F5IHRvIG1lLg0KDQpB
bGljZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
