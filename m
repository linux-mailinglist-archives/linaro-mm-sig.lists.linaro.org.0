Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD89AB3B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2024 18:19:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D337A44A3D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2024 16:19:24 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 32ABE3F56A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2024 16:19:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=kD4wAZ0x;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a99ebb390a5so1256660566b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2024 09:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729613957; x=1730218757; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O010jrXbVVYc/oBTmTv82BWnbf0mEg5IgHol5Aj0+vg=;
        b=kD4wAZ0xn/olbujBvSTRtHpUn6BtETRIqhj+ItArxCaSJjPLzS8DFiMbh0knCwoD3I
         gfyCZlLBylPyW9dsW0lFhf7wGPF8y/G0WI47nLo5OHC3F9nK0NnaJZCcI0M8IIJfq9xg
         n+sq/UhACNc2npGXS03b9nnvwuixk3GEcOD46LKeG4Sw/pjR8Nf+dLDopszaQd9UGFzZ
         uvCaK2OAqxTRX67x2LoF5AvRygcNZYZjksi3/gwuCCb7chHhUT9cdl3dymV8FKTXPU+d
         w8ztApX7JFeAE5QWPyTPocvzlLlZE2K4XpA/F5pgfchQn8Y6pCZY/6+sntZueWu4dvrR
         sSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729613957; x=1730218757;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O010jrXbVVYc/oBTmTv82BWnbf0mEg5IgHol5Aj0+vg=;
        b=pVT1eY0GpSp7iEj59cx0k57I/wuz+ZV/pdc1S3yuuci1W03gjCTPEuyEJVoGJrsztx
         +17mKtZwoaCulAMZB5bg3xbjl7yiySQ1t3eWyj2pzimlj/lk63ofJXfFoNjVxmvmjnwi
         V+8oW2gvowZKhJBdkZZaAexvEHovfpK65w4L9jzfUfiP+HcMUJ5DdFkvU2Gxqb9TShqr
         A04S6NDTrbZET/uS24z9WmTp2IZXc9VJ7wcEInXLRe3odapl2APi0LwLKhyj3c+KKfU3
         oF/TvKm2CQpQThv4J9Q4DslHNJTj6QQcD2rVYYRlKerNzoilTzmahEOhd1ISvIYabawT
         za4g==
X-Forwarded-Encrypted: i=1; AJvYcCUpaz9VeqXu6lsjG3BhETxCVVFrVA3FSAZM3VtcEkl2Ms6AM0rFwAXsZzN8LeVLYZfZriossnN0kFjEcW1q@lists.linaro.org
X-Gm-Message-State: AOJu0YyoYU3cK9s9Org50ku93QdXIw1OZiqgmX46p1f5juuiK4Db8Eu/
	63tyfEa8BS9CSnnkE21IZFt5GllQUB9MbSB3kq/bFV873IYB6c7jysF8axDcs2se3Eg8EhFQyaW
	6p1IjyBrTc5sNHh4vmn38L7W8h5fBkuGtsnQ=
X-Google-Smtp-Source: AGHT+IE2UWF9akIjKN3CLcsBih/tjrcN+DK2fnaCGfTRq+l4mjlUsUQFO0mOXVfH5O+jRzv/E6HKLsTurAdaP0J2Ixw=
X-Received: by 2002:a17:907:6096:b0:a9a:4b51:9e7 with SMTP id
 a640c23a62f3a-a9aaa53a59amr424231966b.16.1729613956687; Tue, 22 Oct 2024
 09:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20241022-macaw-of-spectacular-joy-8dcefa@houat>
In-Reply-To: <20241022-macaw-of-spectacular-joy-8dcefa@houat>
From: John Stultz <jstultz@google.com>
Date: Tue, 22 Oct 2024 09:19:05 -0700
Message-ID: <CANDhNCoLgzy=CPBWjBKLiJzRdnf=SS3AgtFJNB-CBYAo=UEQJA@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Spamd-Result: default: False [-2.55 / 15.00];
	BAYES_HAM(-2.95)[99.78%];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.218.52:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	DMARC_POLICY_ALLOW(0.00)[google.com,reject];
	R_DKIM_ALLOW(0.00)[google.com:s=20230601];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 32ABE3F56A
X-Spamd-Bar: --
Message-ID-Hash: 6SRT3CTIXGHNKYZQVPKHXW4R475RDOJL
X-Message-ID-Hash: 6SRT3CTIXGHNKYZQVPKHXW4R475RDOJL
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Requirements to merge new heaps in the kernel
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SRT3CTIXGHNKYZQVPKHXW4R475RDOJL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMjIsIDIwMjQgYXQgMTozOOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEkgd2FudGVkIHRvIGZvbGxvdy11cCBvbiB0aGUgZGlz
Y3Vzc2lvbiB3ZSBoYWQgYXQgUGx1bWJlcnMgd2l0aCBKb2huIGFuZA0KPiBULkouIGFib3V0IChh
bW9uZyBvdGhlciB0aGluZ3MpIGFkZGluZyBuZXcgaGVhcHMgdG8gdGhlIGtlcm5lbC4NCj4NCj4g
SSdtIHN0aWxsIGludGVyZXN0ZWQgaW4gbWVyZ2luZyBhIGNhcnZlLW91dCBkcml2ZXJbMV0sIHNp
bmNlIGl0IHNlZW1zIHRvIGJlDQo+IGluIGV2ZXJ5IHZlbmRvciBCU1AgYW5kIGdvdCBhc2tlZCBh
Z2FpbiBsYXN0IHdlZWsuDQo+DQo+IEkgcmVtZW1iZXIgZnJvbSBvdXIgZGlzY3Vzc2lvbiB0aGF0
IGZvciBuZXcgaGVhcCB0eXBlcyB0byBiZSBtZXJnZWQsIHdlDQo+IG5lZWRlZCBhIGtlcm5lbCB1
c2UtY2FzZS4gTG9va2luZyBiYWNrLCBJJ20gbm90IGVudGlyZWx5IHN1cmUgaG93IG9uZQ0KPiBj
YW4gcHJvdmlkZSB0aGF0IGdpdmVuIHRoYXQgaGVhcHMgYXJlIGVzc2VudGlhbGx5IGZhY2lsaXRp
ZXMgZm9yDQo+IHVzZXItc3BhY2UuDQo+DQo+IEFtIEkgbWlzcmVtZW1iZXJpbmcgb3IgbWlzc2lu
ZyBzb21ldGhpbmc/IFdoYXQgYXJlIHRoZSByZXF1aXJlbWVudHMgZm9yDQo+IHlvdSB0byBjb25z
aWRlciBhZGRpbmcgYSBuZXcgaGVhcCBkcml2ZXI/DQoNCkl0J3MgYmFzaWNhbGx5IHRoZSBzYW1l
IGFzIHRoZSBEUk0gc3Vic3lzdGVtIHJ1bGVzLg0KaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZ3B1
L2RybS11YXBpLmh0bWwjb3Blbi1zb3VyY2UtdXNlcnNwYWNlLXJlcXVpcmVtZW50cw0KaWU6IFRo
ZXJlIGhhcyB0byBiZSBvcGVuc291cmNlIHVzZXIgZm9yIGl0LCBhbmQgdGhlIHVzZXIgaGFzIHRv
IGJlDQptb3JlIHNpZ25pZmljYW50IHRoYW4gYSAidG95IiBpbXBsZW1lbnRhdGlvbiAod2hpY2gg
Y2FuIGJlIGEgYml0DQpzdWJqZWN0aXZlIGFuZCBjb250ZW50aW91cyB3aGVuIHRyeWluZyB0byBn
ZXQgb3V0IG9mIGEgY2hpY2tlbiBhbmQgZWdnDQpsb29wKS4NCg0KdGhhbmtzDQotam9obg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
