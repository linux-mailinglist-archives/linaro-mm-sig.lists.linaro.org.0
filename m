Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FirDIdi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A1B43146C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C05863F800
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:29:41 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by lists.linaro.org (Postfix) with ESMTPS id AD0373F78B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 17:48:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=doiPHbJP;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of smostafa@google.com designates 209.85.160.182 as permitted sender) smtp.mailfrom=smostafa@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-509062d829dso47131cf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 10:48:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774374525; cv=none;
        d=google.com; s=arc-20240605;
        b=jqHYSFD7nCQgOQFmBzBygKKueeL8WOGQVyYpM/toB7zNRbr6xDV9UASxF4detwqWoQ
         AJR5ncFzgHwdCkGGJWO2jk+my/VPP4SOWkRLT5UJS0JuarEOpAsJfPmp3EmW4wSC7zvm
         DKm4YLTX13uSIl0AN+e9S7gk07+9d7GpHeOSsZI0vfIzwa1FfgQWoKxwTduSlWlWiMOl
         K6OW/LBjG6WiL+yihPTqYcfCNHmBBFON7EOSsLfeb90f/m+6swLL2SzZoFiRYDa3Im4p
         PxL3SQyBwfW5aCZdN8WAgO+RBf95KnHtjEz4M3J/x+kv6zTS8dl6L5Ebwq/atnXh5F9G
         OxfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=T7cRZZnHlvElmV5E4d+ARimoSvXKMR3JQuoEi7NRgdM=;
        fh=QQKsqnIVsIDIWAPMf8SKvxw7iLDO5i8SLeDPOTYeA6s=;
        b=kvYtR7THKVFz0lp4t6V52dLHwjNtao0P/RAw1GYRrhIkyEXjWqZHmjPXfrdzQaoUoH
         FYXqVyXk8iI08nyF7mrTjXGCY/VMQxF0q0Gi1V4Q8bJQRAsiI7Wi0tNHbVwrRCuvmrQy
         0QREux898H+5zz1UrAT7msXNHwox3Czww2gQrZBeazoqHk9b1hUxyItMEQmPBax1/ww9
         JqnE/n6gC3CZKsyu5tlaBo9QP31yafoEgxQcUXNXCVnKTjQVV32PoJkUwmCUyIkI1Z7o
         XsmexGLdvz/q3ITS0a7l6yAQNjgM7xrx24QuxGB44Dap+sxhw/vvcUid1W4ZENQ8aDzt
         bN8g==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774374525; x=1774979325; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7cRZZnHlvElmV5E4d+ARimoSvXKMR3JQuoEi7NRgdM=;
        b=doiPHbJPj7ZbCFtzgJi71SkzRAnk4kz/rlrJ6Qo7lybLwotZqj7vDSWCaIfHGoVk2r
         NjrwDiRXuajsUqE1DrY6VTBMi3/wT9FMAGzVu8sj61ORAv0BbpofSge3pzKPYOgk8h/k
         zGMRLTmPL8i6Oh0MPqu7D5rUp9ADlLK9zzggWyZCfmLGCBEZFZp0SvhclvA1AMPGpe8d
         v8/5T0dAYUWObx0ZVaq0KisBKHhdgEtBcft0Ikp3dxRbs6Y5XjdKjF7350GoruBqHv9G
         ubU3pNHuNqf3hNioN1RMzm/koDtEL4PrgA/gigMqmWvCUflP0JyQKSTaicHYYD+1TxZA
         wciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774374525; x=1774979325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T7cRZZnHlvElmV5E4d+ARimoSvXKMR3JQuoEi7NRgdM=;
        b=merefOn+WpuKBrFgGqb0RUgEw1wgQylcXhvyhOmtNtCXbbwL8Pna183ojZoVLCqmru
         j6f0z3zlwtuxFShtnokUlOI/OUk+D5BzN2iikrk+PlqMEKvFMw3fadPNAaIYqE5VVtbW
         WGaWarTs056/SDKT7jx4hrTt6bcPG8t+XAAr0w2w+L3sETtfdl7SITiKkBMXzeVBuKa+
         i6uLEkpmxbb1twBBuKm9R1HVY1/+8v6qRgxLL5gxTMVJu7AMKmkEzdDX1vvJuSpBrzkx
         827EFOk45beuFs6FlR968qB2tLYvNDhrQ6/y4UzTTq12gRDelp+wJUkfxIeDM3XgJz4V
         Y71g==
X-Forwarded-Encrypted: i=1; AJvYcCUlfYj5uecGhCqOnPYgw9dJ9SAIdG5PBNty/ljJGafqe9xHaLpmJXfG3ko3Bj5lt32k4Ps5uuTak9s+a1HQ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9PtCScWc8Qx989EiFjtorgYTQA0pb+1duifcaVWpN9nEsmvw9
	3SJvbmU63SVU7cYW5AyZm0q/hItNawZDVERNXG+miCo0VEOIjuRfq/29gdrPwloTfcZCDdT0Mbc
	BX3qKSe8T5tg9oKkX4NT1iHCrNNwGsg9W9e2nOTLZSFEoOyZnq+YQ+jfm
X-Gm-Gg: ATEYQzzVrs5pKnsYIFTL3WPskHP4KahDZZplE1oo3tleFkPvC4heRUgQvD38vjE4aw+
	DuGrryufnUnLOAoMUVaBmImqlARm0V24W/xcZVdnFq7MT3KvN/Y5bepjaxJlUTdLt6ybdsoV3Jw
	e3YR/bwwePyrgQod936WA+2mkyI0IuczuWJHXxCngz6TdGhVbCKTRfcP547a1yOP92gLKMlhsaE
	tx74KI830dnDfAfg0Q6qmR9KMHR1AJMy8NdfrJDnm8SJZZ8ztZxE2txCxqaltBP7v5Z6Hy7Je0I
	9CIDGQ4C+evUczGPYpBaJcPT63zXQIPKPBPbpWM=
X-Received: by 2002:ac8:5a41:0:b0:508:fd42:fd05 with SMTP id
 d75a77b69052e-50b823fa2ddmr354431cf.15.1774373794536; Tue, 24 Mar 2026
 10:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260305123641.164164-1-jiri@resnulli.us> <ablV_f_l7wD2m63E@google.com>
 <20260324120057.GC8437@ziepe.ca> <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
 <20260324122416.GD8437@ziepe.ca>
In-Reply-To: <20260324122416.GD8437@ziepe.ca>
From: Mostafa Saleh <smostafa@google.com>
Date: Tue, 24 Mar 2026 17:36:23 +0000
X-Gm-Features: AaiRm51PAsNGUjv3vtee5YHklYnd6tfPfqFJtrYrMATN4cWFgoB-kqA4e1zQENQ
Message-ID: <CAFgf54qwA2D1Xa4rnruJ4Nfp5BsB=T_pB3hzz9HBjh22TL17uA@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: -----
X-MailFrom: smostafa@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3UME6EU3BEHG5LQ7HCYR2INIMZFMYONG
X-Message-ID-Hash: 3UME6EU3BEHG5LQ7HCYR2INIMZFMYONG
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:40 +0000
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3UME6EU3BEHG5LQ7HCYR2INIMZFMYONG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[647];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.933];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[smostafa@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ziepe.ca:email,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: C2A1B43146C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MjTigK9QTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6
aWVwZS5jYT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWFyIDI0LCAyMDI2IGF0IDEyOjE0OjM2UE0g
KzAwMDAsIE1vc3RhZmEgU2FsZWggd3JvdGU6DQo+ID4gT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQg
MTI6MDHigK9QTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4gd3JvdGU6DQo+ID4gPg0K
PiA+ID4gT24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMDE6MjQ6MTNQTSArMDAwMCwgTW9zdGFmYSBT
YWxlaCB3cm90ZToNCj4gPiA+DQo+ID4gPiA+IE9uIHRoZSBvdGhlciBoYW5kLCBmb3IgcmVzdHJp
Y3RlZC1kbWEsIHRoZSBtZW1vcnkgZGVjcnlwdGlvbiBpcyBkZWVwDQo+ID4gPiA+IGluIHRoZSBE
TUEgZGlyZWN0IG1lbW9yeSBhbGxvY2F0aW9uIGFuZCB0aGUgRE1BIEFQSSBjYWxsZXJzIChmb3Ig
ZXgNCj4gPiA+ID4gdmlydGlvIGRyaXZlcnMpIGFyZSBjbHVlbGVzcyBhYm91dCBpdCBhbmQgY2Fu
4oCZdCBwYXNzIGFueSBhdHRycy4NCj4gPiA+ID4gTXkgcHJvcG9zYWwgd2FzIHNwZWNpZmljIHRv
IHJlc3RyaWN0ZWQtZG1hIGFuZCB3b27igJl0IHdvcmsgZm9yIHlvdXIgY2FzZS4NCj4gPiA+DQo+
ID4gPiBIb3cgaXMgdGhpcyBhbnkgZGlmZmVyZW50IGZyb20gQ0M/DQo+ID4gPg0KPiA+ID4gSWYg
dGhlIGRldmljZSBjYW5ub3QgZG1hIHRvICJlbmNyeXB0ZWQiIG1lbW9yeSwgd2hhdGV2ZXIgdGhh
dCBtZWFucw0KPiA+ID4gZm9yIHlvdSwgdGhlbiB0aGUgRE1BIEFQSToNCj4gPiA+ICAtIE1ha2Vz
IGRtYSBhbGxvYyBjb2hlcmVudCByZXR1cm4gImRlY3J5cHRlZCIgbWVtb3J5LCBhbmQgdGhlIGJ1
aWx0DQo+ID4gPiAgICBpbiBtYXBwaW5nIG9mIGNvaGVyZW50IG1lbW9yeSBrbm93cyBhYm91dCB0
aGlzDQo+ID4gPiAgLSBNYWtlcyBkbWFfbWFwX3h4eCB1c2UgU1dJT1RMQiB0byBib3VuY2UgdG8g
ZGVjcnlwdGVkIG1lbW9yeQ0KPiA+ID4NCj4gPiA+IFRoZXJlIGlzIG5vIG5lZWQgZm9yIHNvbWV0
aGluZyBsaWtlIHZpcnRpbyBkcml2ZXJzIHRvIGJlIGF3YXJlIG9mDQo+ID4gPiBhbnkgb2YgdGhp
cy4NCj4gPiA+DQo+ID4gPiBPbiB0aGUgb3RoZXIgaGFuZCBpZiB0aGUgZHJpdmVyIGRlbGliZXJh
dGVseSBhbGxvY2F0ZXMgZGVjcnlwdGVkDQo+ID4gPiBtZW1vcnkgd2l0aG91dCB1c2luZyBETUEg
QVBJIGFsbG9jIGNvaGVyZW50IHRoZW4gaXQga25vd3MgaXQgZGlkIGl0DQo+ID4gPiBhbmQgY2Fu
IHBhc3MgdGhlIGZsYWcgdG8gbWFwIGl0Lg0KPiA+ID4NCj4gPg0KPiA+IFRoZSBwcm9ibGVtIGlz
IHRoYXQgdGhlIERNQSBBUEkgY3VycmVudGx5IGdldHMgY29uZnVzZWQgYnkgdGhpczsgaXQNCj4g
PiBjYW4gZW5kIHVwIGRvdWJsZSBkZWNyeXB0aW5nIHRoZSBtZW1vcnkgb3IgdXNpbmcgdGhlIHdy
b25nIGZ1bmN0aW9ucw0KPiA+IGFzIG1lbnRpb25lZCBpbiBbMV0NCj4NCj4gSSBmdWxseSBiZWxp
dmUgdGhlcmUgYXJlIGJ1Z3MsIGJ1dCB0aGUgQVBJIGRlc2lnbiBpcyBzb3VuZC4gSWYgeW91IHVz
ZQ0KPiB0aGUgY29oZXJlbnQgYWxsb2NhdGlvbnMgZnJvbSB0aGUgRE1BIEFQSSB0aGVuIGl0IGtu
b3dzIGRlY3J5cHRpb24gaGFzDQo+IGhhcHBlbmVkIHdoZW4gaXQgZ2VuZXJhdGVzIGEgZG1hX2Fk
ZHJfdCBhbmQgdGhlcmUgc2hvdWxkIGJlIG5vIGlzc3VlLg0KPg0KPiBOb3csIGlmIGRyaXZlcnMg
YXJlIHVzaW5nIHRoZSBETUEgQVBJIHdyb25nLCBsaWtlIHRyeWluZyB0byBkb3VibGUgbWFwDQo+
IGNvaGVyZW50IGFsbG9jYXRpb25zIHRoZW4gdGhleSBhcmUgYnJva2VuLiBJIGFsc28gd291bGQg
bm90IGJlDQo+IHN1cnByaXNlZCB0byBmaW5kIGNhc2VzIGxpa2UgdGhpcy4NCj4NCg0KQnV0IGl0
J3Mgbm90IGFib3V0IGRyaXZlcnMgaW4gdGhhdCBjYXNlLCBpdCdzIGFib3V0IG1hbnkgcGxhY2Vz
DQooU1dJT1RMQiBhbmQgRE1BLWRpcmVjdCkgY2FsbGluZyBzZXRfbWVtb3J5X2RlY3J5cHRlZCgp
IHdpdGhvdXQgY2xlYXINCm93bmVyc2hpcCBzbyBpbiBzb21lIGNhc2VzIHRoZXkgc3RlcCBvbiBl
YWNoIG90aGVyJ3MgdG9lcywgYW5kIEkgZG9uJ3QNCnRoaW5rIHRoYXQgd2lsbCBnZXQgc2ltcGxl
ciB3aXRoIHlldCBhbm90aGVyIGNhbGxlciBpbiB0aGlzIHNlcmllcw0KDQpJIGFtIGZpbmUgd2l0
aCB0aGUgQVBJIGRlc2lnbiB5b3UgbWVudGlvbmVkLCBidXQgSSBiZWxpZXZlIHRoYXQgaXQNCm5l
ZWRzIGNsZWFyIGRvY3VtZW50YXRpb24gc3BlY2lmeWluZyB3aG8gaXMgcmVzcG9uc2libGUgZm9y
DQpkZWNyeXB0aW9uLiBUaGUgY29kZSBzaG91bGQgcHJvdmlkZSB3cmFwcGVycyBjaGVja2luZyBm
b3IgdGhlc2UgY2FzZXMNCmluc3RlYWQgb2YgaGF2aW5nIGlzX3N3aW90bGJfZm9yX2FsbG9jKCkg
YW5kIGZvcmNlX2RtYV91bmVuY3J5cHRlZCgpDQpldmVyeXdoZXJlIGluIERNQS1kaXJlY3QuDQoN
ClRoYW5rcywNCk1vc3RhZmENCg0KPiBKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
