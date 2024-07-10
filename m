Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0BF92D691
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 18:35:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21C6B3F392
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 16:35:03 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by lists.linaro.org (Postfix) with ESMTPS id 950A83F392
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 16:35:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=RVAMW5L6;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e0361c767ddso6304241276.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 09:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720629300; x=1721234100; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BF9ive2p9YXUMgbnwW6FuoRy0oF4ePAeLEyGAEOkhY0=;
        b=RVAMW5L6tn/6pz8ZgbBry+AujXtK5yJ2HUCssXkRlZu0nuCPFEV4WhRdx/85wjqaKk
         LSKic5AXe0TUuGImF/XC3FQsHbraTAHx92uNsct+brz+tVdL7ygJFj0ikIjy4+A89UQH
         YnIO6kHgEpRfhmdNmC4KQjmRn+ORZcG8Q87saKF+FBdss/uoHveBs7txn8r2tpLEw6zq
         eSJ5FSukdOu1gv/4kd3ciTHKSg0y3A6f8tJQoMDAYfogTjxefIY9/miGmHm8cRpNGq5J
         pdgwGxdmQfjMXUywpQPHUBhebugk7lY07Rdiu5V0CpeMndenpV2b2NQBAoescFfN2/DH
         hHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720629300; x=1721234100;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BF9ive2p9YXUMgbnwW6FuoRy0oF4ePAeLEyGAEOkhY0=;
        b=ljjNHbLvC8G90WJvh2znGKXbLIfveKQ2R96cCMlbNczdQBFtTeP63TzBS/hqYDY+KL
         VhsKQ7bBcYMtM9EHWZw3CrzLnRLOmHSmAO+bfHqs0sq8EViUfaWqpGZaprBGIXoQD2ag
         zKSBBuTLXMtDDbLOjSY8FhdAmizTYCIwLjTDrvqn35RhWh7gL+65+EGSDiAgsaHCSMsg
         9dcS2i9IWBLbFIOHLA7ZVt7WyZyqxORflXTUcWzHBDX3zgAyJDVy4HFv6C5f9sds0CpP
         ZLghw0ERCEIATXBDlKFEQrx42XaKwfwaNA18lNnYGIcIwQJAZDUh3i1W8Lcj1XgDVL8i
         J/XA==
X-Forwarded-Encrypted: i=1; AJvYcCVYrrCV/rNFPtofEMDSmzHi8zMpmJUHaQZK/OCIK8hNhqfHzxoMs6OTKehL3BEIfouJ7be+iK9qJvj4GbiDtD4xanFJjXToXlxH3JzIrYM=
X-Gm-Message-State: AOJu0YwYK5YaVZqYXUAME/VVXEOt5swsDxrc+0iG0gUlPEu8LF5kbE6a
	PeGQEAsMigBUm6D0+DtEWGuZzLlEKuIueyREMMHxqa5yFGT7ALwWz3vUpV1UjHtbfNQynYLpXh8
	AI/ueg/SU1j8LvJm7zazeJRtDMA/Wj6i+aKD1
X-Google-Smtp-Source: AGHT+IHZ5TRrLFlHZ0PUpr8ak7tkgpez+qbokWJEToBW1Plq4/Xn+bXBEL4Smbx2jz+0wQ10oMADhbvO2AMcGSXJNgc=
X-Received: by 2002:a25:26c8:0:b0:e03:5d07:e17a with SMTP id
 3f1490d57ef6-e041b17195bmr7050542276.56.1720629299714; Wed, 10 Jul 2024
 09:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240710135757.25786-1-liulei.rjpt@vivo.com> <5e5ee5d3-8a57-478a-9ce7-b40cab60b67d@amd.com>
 <d70cf558-cf34-4909-a33e-58e3a10bbc0c@vivo.com> <0393cf47-3fa2-4e32-8b3d-d5d5bdece298@amd.com>
 <e8bfe5ed-130a-4f32-a95a-01477cdd98ca@vivo.com>
In-Reply-To: <e8bfe5ed-130a-4f32-a95a-01477cdd98ca@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Jul 2024 09:34:47 -0700
Message-ID: <CABdmKX26f+6m9Gh34Lb+rb2yQB--wSKP3GXRRri6Nxp3Hwxavg@mail.gmail.com>
To: Lei Liu <liulei.rjpt@vivo.com>
X-Rspamd-Queue-Id: 950A83F392
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.178:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KEOYH4IO7KLB562X55AWYWQO4JTIHOYV
X-Message-ID-Hash: KEOYH4IO7KLB562X55AWYWQO4JTIHOYV
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>, Muhammad Usama Anjum <usama.anjum@collabora.com>, Andrei Vagin <avagin@google.com>, Ryan Roberts <ryan.roberts@arm.com>, Kefeng Wang <wangkefeng.wang@huawei.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, Daniel Vetter <daniel@ffwll.ch>, "Vetter, Daniel" <daniel.vetter@intel.com>, opensource.kernel@vivo.com, quic_sukadev@quicinc.com, quic_cgoldswo@quicinc.com, Akilesh Kailash <akailash@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] Support direct I/O read and write for memory allocated by dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KEOYH4IO7KLB562X55AWYWQO4JTIHOYV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdWwgMTAsIDIwMjQgYXQgODowOOKAr0FNIExlaSBMaXUgPGxpdWxlaS5yanB0QHZp
dm8uY29tPiB3cm90ZToNCj4NCj4NCj4gb24gMjAyNC83LzEwIDIyOjQ4LCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPiA+IEFtIDEwLjA3LjI0IHVtIDE2OjM1IHNjaHJpZWIgTGVpIExpdToNCj4g
Pj4NCj4gPj4gb24gMjAyNC83LzEwIDIyOjE0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+
Pj4gQW0gMTAuMDcuMjQgdW0gMTU6NTcgc2NocmllYiBMZWkgTGl1Og0KPiA+Pj4+IFVzZSB2bV9p
bnNlcnRfcGFnZSB0byBlc3RhYmxpc2ggYSBtYXBwaW5nIGZvciB0aGUgbWVtb3J5IGFsbG9jYXRl
ZA0KPiA+Pj4+IGJ5IGRtYWJ1ZiwgdGh1cyBzdXBwb3J0aW5nIGRpcmVjdCBJL08gcmVhZCBhbmQg
d3JpdGU7IGFuZCBmaXggdGhlDQo+ID4+Pj4gaXNzdWUgb2YgaW5jb3JyZWN0IG1lbW9yeSBzdGF0
aXN0aWNzIGFmdGVyIG1hcHBpbmcgZG1hYnVmIG1lbW9yeS4NCj4gPj4+DQo+ID4+PiBXZWxsIGJp
ZyBOQUsgdG8gdGhhdCEgRGlyZWN0IEkvTyBpcyBpbnRlbnRpb25hbGx5IGRpc2FibGVkIG9uIERN
QS1idWZzLg0KPiA+Pg0KPiA+PiBIZWxsbyEgQ291bGQgeW91IGV4cGxhaW4gd2h5IGRpcmVjdF9p
byBpcyBkaXNhYmxlZCBvbiBETUFCVUY/IElzDQo+ID4+IHRoZXJlIGFueSBoaXN0b3JpY2FsIHJl
YXNvbiBmb3IgdGhpcz8NCj4gPg0KPiA+IEl0J3MgYmFzaWNhbGx5IG9uZSBvZiB0aGUgbW9zdCBm
dW5kYW1lbnRhbCBkZXNpZ24gZGVjaXNpb24gb2YgRE1BLUJ1Zi4NCj4gPiBUaGUgYXR0YWNobWVu
dC9tYXAvZmVuY2UgbW9kZWwgRE1BLWJ1ZiB1c2VzIGlzIG5vdCByZWFsbHkgY29tcGF0aWJsZQ0K
PiA+IHdpdGggZGlyZWN0IEkvTyBvbiB0aGUgdW5kZXJseWluZyBwYWdlcy4NCj4NCj4gVGhhbmsg
eW91ISBJcyB0aGVyZSBhbnkgcmVsYXRlZCBkb2N1bWVudGF0aW9uIG9uIHRoaXM/IEkgd291bGQg
bGlrZSB0bw0KPiB1bmRlcnN0YW5kIGFuZCBsZWFybiBtb3JlIGFib3V0IHRoZSBmdW5kYW1lbnRh
bCByZWFzb25zIGZvciB0aGUgbGFjayBvZg0KPiBzdXBwb3J0Lg0KDQpIaSBMZWkgYW5kIENocmlz
dGlhbiwNCg0KVGhpcyBpcyBub3cgdGhlIHRoaXJkIHJlcXVlc3QgSSd2ZSBzZWVuIGZyb20gdGhy
ZWUgZGlmZmVyZW50IGNvbXBhbmllcw0Kd2hvIGFyZSBpbnRlcmVzdGVkIGluIHRoaXMsIGJ1dCB0
aGUgb3RoZXJzIGFyZSBub3QgZm9yIHJlYXNvbnMgb2YgcmVhZA0KcGVyZm9ybWFuY2UgdGhhdCB5
b3UgbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ugb24geW91ciBmaXJzdA0KcGF0Y2guIFNv
bWVvbmUgZWxzZSBhdCBHb29nbGUgcmFuIGEgY29tcGFyaXNvbiBiZXR3ZWVuIGEgbm9ybWFsIHJl
YWQoKQ0KYW5kIGEgZGlyZWN0IEkvTyByZWFkKCkgaW50byBhIHByZWFsbG9jYXRlZCB1c2VyIGJ1
ZmZlciBhbmQgZm91bmQgdGhhdA0Kd2l0aCBsYXJnZSByZWFkYWhlYWQgKDE2IE1CKSB0aGUgdGhy
b3VnaHB1dCBjYW4gYWN0dWFsbHkgYmUgc2xpZ2h0bHkNCmhpZ2hlciB0aGFuIGRpcmVjdCBJL08u
IElmIHlvdSBoYXZlIGNvbmNlcm5zIGFib3V0IHJlYWQgcGVyZm9ybWFuY2UsDQpoYXZlIHlvdSB0
cmllZCBpbmNyZWFzaW5nIHRoZSByZWFkYWhlYWQgc2l6ZT8NCg0KVGhlIG90aGVyIG1vdGl2YXRp
b24gaXMgdG8gbG9hZCBhIGdhamlsbGlvbiBieXRlIGZpbGUgZnJvbSBkaXNrIGludG8gYQ0KZG1h
YnVmIHdpdGhvdXQgZXZpY3RpbmcgdGhlIGVudGlyZSBjb250ZW50cyBvZiBwYWdlY2FjaGUgd2hp
bGUgZG9pbmcNCnNvLiBTb21ldGhpbmcgbGlrZSB0aGlzICh3aGljaCBkb2VzIG5vdCBjdXJyZW50
bHkgd29yayBiZWNhdXNlIHJlYWQoKQ0KdHJpZXMgdG8gR1VQIG9uIHRoZSBkbWFidWYgbWVtb3J5
IGFzIHlvdSBtZW50aW9uKToNCg0Kc3RhdGljIGludCBkbWFidWZfaGVhcF9hbGxvYyhpbnQgaGVh
cF9mZCwgc2l6ZV90IGxlbikNCnsNCiAgICBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRh
IGRhdGEgPSB7DQogICAgICAgIC5sZW4gPSBsZW4sDQogICAgICAgIC5mZCA9IDAsDQogICAgICAg
IC5mZF9mbGFncyA9IE9fUkRXUiB8IE9fQ0xPRVhFQywNCiAgICAgICAgLmhlYXBfZmxhZ3MgPSAw
LA0KICAgIH07DQogICAgaW50IHJldCA9IGlvY3RsKGhlYXBfZmQsIERNQV9IRUFQX0lPQ1RMX0FM
TE9DLCAmZGF0YSk7DQogICAgaWYgKHJldCA8IDApDQogICAgICAgIHJldHVybiByZXQ7DQogICAg
cmV0dXJuIGRhdGEuZmQ7DQp9DQoNCmludCBtYWluKGludCwgY2hhciAqKmFyZ3YpDQp7DQogICAg
ICAgIGNvbnN0IGNoYXIgKmZpbGVfcGF0aCA9IGFyZ3ZbMV07DQogICAgICAgIHByaW50ZigiRmls
ZTogJXNcbiIsIGZpbGVfcGF0aCk7DQogICAgICAgIGludCBmaWxlX2ZkID0gb3BlbihmaWxlX3Bh
dGgsIE9fUkRPTkxZIHwgT19ESVJFQ1QpOw0KDQogICAgICAgIHN0cnVjdCBzdGF0IHN0Ow0KICAg
ICAgICBzdGF0KGZpbGVfcGF0aCwgJnN0KTsNCiAgICAgICAgc3NpemVfdCBmaWxlX3NpemUgPSBz
dC5zdF9zaXplOw0KICAgICAgICBzc2l6ZV90IGFsaWduZWRfc2l6ZSA9IChmaWxlX3NpemUgKyA0
MDk1KSAmIH40MDk1Ow0KDQogICAgICAgIHByaW50ZigiRmlsZSBzaXplOiAlemQgQWxpZ25lZCBz
aXplOiAlemRcbiIsIGZpbGVfc2l6ZSwgYWxpZ25lZF9zaXplKTsNCiAgICAgICAgaW50IGhlYXBf
ZmQgPSBvcGVuKCIvZGV2L2RtYV9oZWFwL3N5c3RlbSIsIE9fUkRPTkxZKTsNCiAgICAgICAgaW50
IGRtYWJ1Zl9mZCA9IGRtYWJ1Zl9oZWFwX2FsbG9jKGhlYXBfZmQsIGFsaWduZWRfc2l6ZSk7DQoN
CiAgICAgICAgdm9pZCAqdm0gPSBtbWFwKG51bGxwdHIsIGFsaWduZWRfc2l6ZSwgUFJPVF9SRUFE
IHwgUFJPVF9XUklURSwNCk1BUF9TSEFSRUQsIGRtYWJ1Zl9mZCwgMCk7DQogICAgICAgIHByaW50
ZigiVk0gYXQgMHglbHhcbiIsICh1bnNpZ25lZCBsb25nKXZtKTsNCg0KICAgICAgICBkbWFfYnVm
X3N5bmMgc3luY19mbGFncyB7IERNQV9CVUZfU1lOQ19TVEFSVCB8DQpETUFfQlVGX1NZTkNfUkVB
RCB8IERNQV9CVUZfU1lOQ19XUklURSB9Ow0KICAgICAgICBpb2N0bChkbWFidWZfZmQsIERNQV9C
VUZfSU9DVExfU1lOQywgJnN5bmNfZmxhZ3MpOw0KDQogICAgICAgIHNzaXplX3QgcmMgPSByZWFk
KGZpbGVfZmQsIHZtLCBmaWxlX3NpemUpOw0KICAgICAgICBwcmludGYoIlJlYWQ6ICV6ZCAlc1xu
IiwgcmMsIHJjIDwgMCA/IHN0cmVycm9yKGVycm5vKSA6ICIiKTsNCg0KICAgICAgICBzeW5jX2Zs
YWdzLmZsYWdzID0gRE1BX0JVRl9TWU5DX0VORCB8IERNQV9CVUZfU1lOQ19SRUFEIHwNCkRNQV9C
VUZfU1lOQ19XUklURTsNCiAgICAgICAgaW9jdGwoZG1hYnVmX2ZkLCBETUFfQlVGX0lPQ1RMX1NZ
TkMsICZzeW5jX2ZsYWdzKTsNCn0NCg0KT3IgcmVwbGFjZSB0aGUgbW1hcCgpICsgcmVhZCgpIHdp
dGggc2VuZGZpbGUoKS4NCg0KU28gSSB3b3VsZCBhbHNvIGxpa2UgdG8gc2VlIHRoZSBhYm92ZSBj
b2RlIChvciBzb21ldGhpbmcgZWxzZSBzaW1pbGFyKQ0KYmUgYWJsZSB0byB3b3JrIGFuZCBJIHVu
ZGVyc3RhbmQgc29tZSBvZiB0aGUgcmVhc29ucyB3aHkgaXQgY3VycmVudGx5DQpkb2VzIG5vdCwg
YnV0IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgd2Ugc2hvdWxkIGFjdGl2ZWx5IHByZXZlbnQgdGhp
cw0KdHlwZSBvZiBiZWhhdmlvciBlbnRpcmVseS4NCg0KQmVzdCwNClQuSi4NCg0KDQoNCg0KDQoN
Cg0KDQo+ID4NCj4gPj4+DQo+ID4+PiBXZSBhbHJlYWR5IGRpc2N1c3NlZCBlbmZvcmNpbmcgdGhh
dCBpbiB0aGUgRE1BLWJ1ZiBmcmFtZXdvcmsgYW5kDQo+ID4+PiB0aGlzIHBhdGNoIHByb2JhYmx5
IG1lYW5zIHRoYXQgd2Ugc2hvdWxkIHJlYWxseSBkbyB0aGF0Lg0KPiA+Pj4NCj4gPj4+IFJlZ2Fy
ZHMsDQo+ID4+PiBDaHJpc3RpYW4uDQo+ID4+DQo+ID4+IFRoYW5rIHlvdSBmb3IgeW91ciByZXNw
b25zZS4gV2l0aCB0aGUgYXBwbGljYXRpb24gb2YgQUkgbGFyZ2UgbW9kZWwNCj4gPj4gZWRnZWlm
aWNhdGlvbiwgd2UgdXJnZW50bHkgbmVlZCBzdXBwb3J0IGZvciBkaXJlY3RfaW8gb24gRE1BQlVG
IHRvDQo+ID4+IHJlYWQgc29tZSB2ZXJ5IGxhcmdlIGZpbGVzLiBEbyB5b3UgaGF2ZSBhbnkgbmV3
IHNvbHV0aW9ucyBvciBwbGFucw0KPiA+PiBmb3IgdGhpcz8NCj4gPg0KPiA+IFdlIGhhdmUgc2Vl
biBzaW1pbGFyIHByb2plY3RzIG92ZXIgdGhlIHllYXJzIGFuZCBhbGwgb2YgdGhvc2UgdHVybmVk
DQo+ID4gb3V0IHRvIGJlIGNvbXBsZXRlIHNoaXB3cmVja3MuDQo+ID4NCj4gPiBUaGVyZSBpcyBj
dXJyZW50bHkgYSBwYXRjaCBzZXQgdW5kZXIgZGlzY3Vzc2lvbiB0byBnaXZlIHRoZSBuZXR3b3Jr
DQo+ID4gc3Vic3lzdGVtIERNQS1idWYgc3VwcG9ydC4gSWYgeW91IGFyZSBpbnRlcmVzdCBpbiBu
ZXR3b3JrIGRpcmVjdCBJL08NCj4gPiB0aGF0IGNvdWxkIGhlbHAuDQo+DQo+IElzIHRoZXJlIGEg
cmVsYXRlZCBpbnRyb2R1Y3Rpb24gbGluayBmb3IgdGhpcyBwYXRjaD8NCj4NCj4gPg0KPiA+IEFk
ZGl0aW9uYWwgdG8gdGhhdCBhIGxvdCBvZiBHUFUgZHJpdmVycyBzdXBwb3J0IHVzZXJwdHIgdXNh
Z2VzLCBlLmcuDQo+ID4gdG8gaW1wb3J0IG1hbGxvY2VkIG1lbW9yeSBpbnRvIHRoZSBHUFUgZHJp
dmVyLiBZb3UgY2FuIHRoZW4gYWxzbyBkbw0KPiA+IGRpcmVjdCBJL08gb24gdGhhdCBtYWxsb2Nl
ZCBtZW1vcnkgYW5kIHRoZSBrZXJuZWwgd2lsbCBlbmZvcmNlIGNvcnJlY3QNCj4gPiBoYW5kbGlu
ZyB3aXRoIHRoZSBHUFUgZHJpdmVyIHRocm91Z2ggTU1VIG5vdGlmaWVycy4NCj4gPg0KPiA+IEJ1
dCBhcyBmYXIgYXMgSSBrbm93IGEgZ2VuZXJhbCBETUEtYnVmIGJhc2VkIHNvbHV0aW9uIGlzbid0
IHBvc3NpYmxlLg0KPg0KPiAxLlRoZSByZWFzb24gd2UgbmVlZCB0byB1c2UgRE1BQlVGIG1lbW9y
eSBoZXJlIGlzIHRoYXQgd2UgbmVlZCB0byBzaGFyZQ0KPiBtZW1vcnkgYmV0d2VlbiB0aGUgQ1BV
IGFuZCBBUFUuIEN1cnJlbnRseSwgb25seSBETUFCVUYgbWVtb3J5IGlzDQo+IHN1aXRhYmxlIGZv
ciB0aGlzIHB1cnBvc2UuIEFkZGl0aW9uYWxseSwgd2UgbmVlZCB0byByZWFkIHZlcnkgbGFyZ2Ug
ZmlsZXMuDQo+DQo+IDIuIEFyZSB0aGVyZSBhbnkgb3RoZXIgc29sdXRpb25zIGZvciB0aGlzPyBB
bHNvLCBkbyB5b3UgaGF2ZSBhbnkgcGxhbnMNCj4gdG8gc3VwcG9ydCBkaXJlY3RfaW8gZm9yIERN
QUJVRiBtZW1vcnkgaW4gdGhlIGZ1dHVyZT8NCj4NCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gQ2hy
aXN0aWFuLg0KPiA+DQo+ID4+DQo+ID4+IFJlZ2FyZHMsDQo+ID4+IExlaSBMaXUuDQo+ID4+DQo+
ID4+Pg0KPiA+Pj4+DQo+ID4+Pj4gTGVpIExpdSAoMik6DQo+ID4+Pj4gICAgbW06IGRtYWJ1Zl9k
aXJlY3RfaW86IFN1cHBvcnQgZGlyZWN0X2lvIGZvciBtZW1vcnkgYWxsb2NhdGVkIGJ5DQo+ID4+
Pj4gZG1hYnVmDQo+ID4+Pj4gICAgbW06IGRtYWJ1Zl9kaXJlY3RfaW86IEZpeCBtZW1vcnkgc3Rh
dGlzdGljcyBlcnJvciBmb3IgZG1hYnVmDQo+ID4+Pj4gYWxsb2NhdGVkDQo+ID4+Pj4gICAgICBt
ZW1vcnkgd2l0aCBkaXJlY3RfaW8gc3VwcG9ydA0KPiA+Pj4+DQo+ID4+Pj4gICBkcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8ICA1ICsrKy0tDQo+ID4+Pj4gICBmcy9wcm9jL3Rh
c2tfbW11LmMgICAgICAgICAgICAgICAgICB8ICA4ICsrKysrKystDQo+ID4+Pj4gICBpbmNsdWRl
L2xpbnV4L21tLmggICAgICAgICAgICAgICAgICB8ICAxICsNCj4gPj4+PiAgIG1tL21lbW9yeS5j
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0tDQo+ID4+Pj4gICBt
bS9ybWFwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA5ICsrKysrLS0tLQ0KPiA+Pj4+
ICAgNSBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4g
Pj4+Pg0KPiA+Pj4NCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
