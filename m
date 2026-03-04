Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKcQBwZZqGlQtgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Mar 2026 17:08:38 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B07E203C6F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Mar 2026 17:08:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F049D400F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2026 16:08:35 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 41433400F4
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2026 16:08:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=YNasDrjj;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772640512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
	b=YNasDrjjRD9qGc2WCop/ujSHiSJFFwc51nqcuuUHdMedrRcQ/p3eyuZk8O+tM2GMyDthVv
	r8Ul6DpnO27XXVqD8oFe0f1eUMvw1LofVu6mn3TcgK1ux46adDbmLhbKDyH4IuR6RM4RuP
	M/4ZXVsHZA2Tw2TufK6ZJFN8X7YwsG4=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-lKNnXMvVOBKt-nAyNbA2LA-1; Wed, 04 Mar 2026 11:08:13 -0500
X-MC-Unique: lKNnXMvVOBKt-nAyNbA2LA-1
X-Mimecast-MFC-AGG-ID: lKNnXMvVOBKt-nAyNbA2LA_1772640490
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d4c3d9dd70so110292268a34.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Mar 2026 08:08:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772640486; x=1773245286;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
        b=Xxj5EsuP06DykMhhCMN8CIXbm0ISc1mlV+1m3zMoD97LGgJNz3vmCOYkCNSFScxaoh
         3ugXN24lmgHQFUrxSu/p3OZXGuHot6KJEKj0t6TzKUw11j3zhEdRIzCf01CAVGZlN92k
         w2gaWq3L5dNSxcUDYyZa/xWlOxM0sbQ6pZyypwgDsNJeAX1ehBgbrEtjhTuJf+xLrx/B
         n1+BtDUXZSrGXV712clSgu30jofLuHdKqjicvuIUJ4gTq11mtr3iWNnwA+IPXd83K4sP
         hEdsCzCSrIYLx0Ju6E9p/uRZ4LBIFLQl4LSl1B8IuRfMTWWK5aTjyM3XXH1sjGgFUkwU
         hRoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXyCuQpoWXpiCVZtWDrKu1bIc65GyhsrKpRw5N02O3QXtL1xVav3oKpxAUXouq/5Ow5WxoIlHHF0Hd1JaH@lists.linaro.org
X-Gm-Message-State: AOJu0Yzj6FG0570RTIusxi8vB7wo5DPvOeBaTgnpwSsc3NzWmg0lSzu+
	sU5A/76cnwFD9ureIwbBjRKolHUx48ISsPqrg3Ae8vFsm9F1nq3CTH7CDsB+16RLwa8cKwNsmFT
	zs7d9L23WoC+oApkMfCLcM/vWgxEJJsdtBgmyPeqRsTT8fTO401OzS76k+fxpGBEteAPsDdEuUn
	y3idzMHJaq2Az83TWVSWXEAiVZN78hEG+LWiQ56wQhtho=
X-Gm-Gg: ATEYQzx6iIIDklLhzIyCz8iSTANOwnGsXnyoQt9WRVWm9U7ObtVrvuD5iax+RI8xHKE
	DHViIfLYFLA1/ikmjyXPPQNIwELKZ3Pn/DkulKsuzdFBxQjJYtl0M7KCtA9Sac/ii6tPBVtsNNL
	xABn7sfgL1a16vwcuehA3CbHvkrEQxsByV25jJHUKF1wglnBXmo5xqiJ9FAUp433Q4btjDBF4hH
	g==
X-Received: by 2002:a05:6820:1ca4:b0:679:e68b:f95d with SMTP id 006d021491bc7-67b1776bde5mr1385803eaf.53.1772640486035;
        Wed, 04 Mar 2026 08:08:06 -0800 (PST)
X-Received: by 2002:a05:6820:1ca4:b0:679:e68b:f95d with SMTP id
 006d021491bc7-67b1776bde5mr1385781eaf.53.1772640485669; Wed, 04 Mar 2026
 08:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
In-Reply-To: <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Wed, 4 Mar 2026 17:07:54 +0100
X-Gm-Features: AaiRm51Q5GvpC48eWrWjCC8xCsFxsretWrNgIwHjulMNxRdjdZzE0CFF6Jj-oi0
Message-ID: <CADSE00KqF-7m+ZMYLzzgL3FzZv3P_G-v8ycYdXBj_WE4=P2_jw@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: sY2ea1_SsMhBk0r3bTQRoxZb0MqRUZZkB60e3Q1U-K0_1772640490
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: TAEMUYBWXRJ3FX66D4XLZXWB4OX6PPI4
X-Message-ID-Hash: TAEMUYBWXRJ3FX66D4XLZXWB4OX6PPI4
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com, mripard@redhat.com, John Stultz <john.stultz@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/6] dma-buf: heaps: add coherent reserved-memory heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TAEMUYBWXRJ3FX66D4XLZXWB4OX6PPI4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9B07E203C6F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.848];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMywgMjAyNiBhdCA5OjU14oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29v
Z2xlLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWFyIDMsIDIwMjYgYXQgNDozNOKAr0FNIEFs
YmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBUaGlzIHBh
dGNoIGludHJvZHVjZXMgYSBuZXcgaGVhcCBkcml2ZXIgdG8gZXhwb3NlIERUIG5vbuKAkXJldXNh
YmxlDQo+ID4gInNoYXJlZC1kbWEtcG9vbCIgY29oZXJlbnQgcmVnaW9ucyBhcyBkbWEtYnVmIGhl
YXBzLCBzbyB1c2Vyc3BhY2UgY2FuDQo+ID4gYWxsb2NhdGUgYnVmZmVycyBmcm9tIGVhY2ggcmVz
ZXJ2ZWQsIG5hbWVkIHJlZ2lvbi4NCj4NCj4gSnVzdCBhIG5pdCBoZXJlOiBNaWdodCBiZSBnb29k
IHRvIHByb3ZpZGUgc29tZSBoaWdoZXIgbGV2ZWwgY29udGV4dCBhcw0KPiB0byB3aHkgdGhpcyBp
cyB3YW50ZWQsIGFuZCB3aGF0IGl0IGVuYWJsZXMuDQo+DQo+IEFsc28sICJzaGFyZWQtZG1hLXBv
b2wiIGlzIGFsc28gdXNlZCBmb3IgQ01BIHJlZ2lvbnMsIHNvIGl0IG1pZ2h0IGJlDQo+IHVuY2xl
YXIgaW5pdGlhbGx5IGhvdyB0aGlzIGlzIGRpZmZlcmVudCBmcm9tIHRoZSBDTUEgaGVhcCAoeW91
IGRvDQo+IG1lbnRpb24gbm9uLXJldXNhYmxlLCBidXQgdGhhdCdzIGEgcHJldHR0eSBzdWJ0bGUg
ZGV0YWlsKS4NCg0KU3VyZSwgSSB3aWxsIGV4cGFuZCB0aGlzIGZvciB0aGUgbmV4dCByZXZpc2lv
biBhbmQgdHJ5IHRvIGNsYXJpZnkgdGhlDQpwb2ludHMgeW91IG1lbnRpb25lZCBoZXJlIChhbmQg
YWRkIHRoZXNlIHBvaW50cyB0byB0aGUgcmVsZXZhbnQNCnBhdGNoKS4NCg0KQlIsDQpBbGJlcnQN
Cg0KPg0KPiBNaWdodCBiZSBnb29kIHRvIGFkZCBzb21lIG9mIHRoZSByYXRpb25hbGUgdG8gdGhl
IHBhdGNoIGFkZGluZyB0aGUNCj4gaGVhcCBpbXBsZW1lbnRhdGlvbiBhcyB3ZWxsIHNvIGl0IG1h
a2VzIGl0IGludG8gdGhlIGdpdCBoaXN0b3J5Lg0KPg0KPiB0aGFua3MNCj4gLWpvaG4NCj4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
