Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PDZM/Vg5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D06C431147
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A2CF4046B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:57 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 3C51A3F70A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 13:37:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=tOsZ9tKb;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.42) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so67324705e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 06:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773754625; x=1774359425; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bvyHox0ngaRcTYY5mmOslDzHoAOd+VMSoOGA/5ZJGB4=;
        b=tOsZ9tKbMAbBb1EUqFKYjKv674ASCFCiVU30JJNf/kbqMPnuUyPauQij9WetNzpuRV
         UV0xi0yIWFD8v5mazLTjClEU7lWZ2iPhPF8FGx+TwRgXvfFMoKGp35nwwk7NW9MIXoEj
         FFcmfRWvjW25+c+R+Gqnw9IG8lH1yHWvTdfr+W6OrZZ3VWf48O+uZqNZQlttnpMZgkNT
         5Um1rK9iotReg/v6Cbyr6fkfid13OYWwOrJQlG0+TNLDSVOnS+vt4T0/40CUvcWnaJL9
         Tg/qvPCnQFLPlp2h7bzBH0MdiNF4ket3i19Mx9VTjC1bIuhNNDwklVBKau3Np86FbU0Z
         jEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773754625; x=1774359425;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bvyHox0ngaRcTYY5mmOslDzHoAOd+VMSoOGA/5ZJGB4=;
        b=i1qFQbF9XLmviEEBj6jPm6O/i/i8Kt0MmvgitB3jgl6Jsam6BXMOgTdKu+SJrLy1En
         NxOcCSDkmcFsQpKvmibvZ479K0zshIG9qhU98qWRjC/JR8+LqhXD2t/oPqjmr/ua5DFy
         XWyoqpL7UQg1NjRwpKGZVnXxeYwBnzVBrSlt85Lk2FnKkdX0J0N7sDMNq3mF9f1vEa9z
         bCzubIaANRjLND1WSarJ5JcvDWPAqESFSJlDbiZN+kV9w3lM47Ou34hkUL/qY9U1rsNk
         iAouNOTORTbvxvld3L3BwwcSc/rgaCcAAHpNZOpKvkhqdufxHBGEM9fZRpG//krFu9lE
         5hAw==
X-Forwarded-Encrypted: i=1; AJvYcCUcLFuKnH2kF+TkQiSGZi/fFi6XAZragmpfEFeng1q3WuRLu+AzuT9jP9f7W4UsVmRQS+gi8xTYbOuPhXdM@lists.linaro.org
X-Gm-Message-State: AOJu0Yx+HgTlNlRqJXlQ9Uv+qi6EKbtwOTSwY9d8mgQTtSHc/vRXVYzo
	kxvNVvTfR+dxFa9qecLCcJF5hoPZdG8HhqYspsntebXeXdfiZLJavf29zxnInLltZLc=
X-Gm-Gg: ATEYQzyaJD48ObH/+7Gf/+S5i05lpeHMXxqSmLa/+rKTO49igBwp5+QeY3dqVSCzyzR
	AfE0TMmA+m1I3seVIiTCTnl3eFXEhA2RxFXphSnrc/874DL8zl1xeEc2WG0nzcZKhA14IucwVme
	72WzAiFO3AON1z6g0xc8tyR1eM1sVr6OwLnklNeRaW3Rd3iU7ThnjU5Z9P5DjvRyBNLdncFPKu+
	KL6hVEMMG1tmwI62k9sUc3uxLhQ1f5EBpITfLg2GKQ1OXeCJH2oL9phlJ0rSD9IrAUtU9oprehl
	cAeQ1yOlM45TEp/2zXlVSuQ4dVtNPXe05t5YkYfe4Cjsm57WdZUMNz2lG66L7MJ7AKyYUmNPF7J
	BlJH6ue/b/AtBQ3pLffVjtTn8znJ4wGKPAA2Bal4G2eoXCRDY2p9yqA4WoBwwcuB2iDNOa3piAT
	MF2c4npcRePET6rC9EYi0MoofCJd5bF28=
X-Received: by 2002:a05:600c:a011:b0:485:6cd3:f7ac with SMTP id 5b1f17b1804b1-4856ce33d33mr90044845e9.20.1773754625122;
        Tue, 17 Mar 2026 06:37:05 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaa3b66sm76702495e9.11.2026.03.17.06.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 06:37:04 -0700 (PDT)
Date: Tue, 17 Mar 2026 14:37:02 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mostafa Saleh <smostafa@google.com>
Message-ID: <xdy5anped2koy47cuxbbqocyypisl7lagwvpuokpzpggohk2dp@yilc5ihictph>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <ablV_f_l7wD2m63E@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ablV_f_l7wD2m63E@google.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DSANYIPTOVSLOWWCD22557MLSAREU3IB
X-Message-ID-Hash: DSANYIPTOVSLOWWCD22557MLSAREU3IB
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:53 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSANYIPTOVSLOWWCD22557MLSAREU3IB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[819];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.996];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 1D06C431147
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHVlLCBNYXIgMTcsIDIwMjYgYXQgMDI6MjQ6MTNQTSArMDEwMCwgc21vc3RhZmFAZ29vZ2xlLmNv
bSB3cm90ZToNCj5IaSBKaXJpLA0KPg0KPk9uIFRodSwgTWFyIDA1LCAyMDI2IGF0IDAxOjM2OjM5
UE0gKzAxMDAsIEppcmkgUGlya28gd3JvdGU6DQo+PiBGcm9tOiBKaXJpIFBpcmtvIDxqaXJpQG52
aWRpYS5jb20+DQo+PiANCj4+IENvbmZpZGVudGlhbCBjb21wdXRpbmcgKENvQ28pIFZNcy9ndWVz
dHMsIHN1Y2ggYXMgQU1EIFNFViBhbmQgSW50ZWwgVERYLA0KPj4gcnVuIHdpdGggZW5jcnlwdGVk
L3Byb3RlY3RlZCBtZW1vcnkgd2hpY2ggY3JlYXRlcyBhIGNoYWxsZW5nZQ0KPj4gZm9yIGRldmlj
ZXMgdGhhdCBkbyBub3Qgc3VwcG9ydCBETUEgdG8gaXQgKG5vIFRESVNQIHN1cHBvcnQpLg0KPj4g
DQo+PiBGb3Iga2VybmVsLW9ubHkgRE1BIG9wZXJhdGlvbnMsIHN3aW90bGIgYm91bmNlIGJ1ZmZl
cmluZyBwcm92aWRlcyBhDQo+PiB0cmFuc3BhcmVudCBzb2x1dGlvbiBieSBjb3B5aW5nIGRhdGEg
dGhyb3VnaCBkZWNyeXB0ZWQgbWVtb3J5Lg0KPj4gSG93ZXZlciwgdGhlIG9ubHkgd2F5IHRvIGdl
dCB0aGlzIG1lbW9yeSBpbnRvIHVzZXJzcGFjZSBpcyB2aWEgdGhlIERNQQ0KPj4gQVBJJ3MgZG1h
X2FsbG9jX3BhZ2VzKCkvZG1hX21tYXBfcGFnZXMoKSB0eXBlIGludGVyZmFjZXMgd2hpY2ggbGlt
aXRzDQo+PiB0aGUgdXNlIG9mIHRoZSBtZW1vcnkgdG8gYSBzaW5nbGUgRE1BIGRldmljZSwgYW5k
IGlzIGluY29tcGF0aWJsZSB3aXRoDQo+PiBwaW5fdXNlcl9wYWdlcygpLg0KPj4gDQo+PiBUaGVz
ZSBsaW1pdGF0aW9ucyBhcmUgcGFydGljdWxhcmx5IHByb2JsZW1hdGljIGZvciB0aGUgUkRNQSBz
dWJzeXN0ZW0NCj4+IHdoaWNoIG1ha2VzIGhlYXZ5IHVzZSBvZiBwaW5fdXNlcl9wYWdlcygpIGFu
ZCBleHBlY3RzIGZsZXhpYmxlIG1lbW9yeQ0KPj4gdXNhZ2UgYmV0d2VlbiBtYW55IGRpZmZlcmVu
dCBETUEgZGV2aWNlcy4NCj4+IA0KPj4gVGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyB1c2Vyc3Bh
Y2UgdG8gZXhwbGljaXRseSByZXF1ZXN0IGRlY3J5cHRlZA0KPj4gKHNoYXJlZCkgbWVtb3J5IGFs
bG9jYXRpb25zIGZyb20gdGhlIGRtYS1idWYgc3lzdGVtIGhlYXAuDQo+PiBVc2Vyc3BhY2UgY2Fu
IG1tYXAgdGhpcyBtZW1vcnkgYW5kIHBhc3MgdGhlIGRtYS1idWYgZmQgdG8gb3RoZXINCj4+IGV4
aXN0aW5nIGltcG9ydGVycyBzdWNoIGFzIFJETUEgb3IgRFJNIGRldmljZXMgdG8gYWNjZXNzIHRo
ZQ0KPj4gbWVtb3J5LiBUaGUgRE1BIEFQSSBpcyBpbXByb3ZlZCB0byBhbGxvdyB0aGUgZG1hIGhl
YXAgZXhwb3J0ZXIgdG8gRE1BDQo+PiBtYXAgdGhlIHNoYXJlZCBtZW1vcnkgdG8gZWFjaCBpbXBv
cnRpbmcgZGV2aWNlLg0KPg0KPkkgaGF2ZSBiZWVuIGxvb2tpbmcgaW50byBhIHNpbWlsYXIgcHJv
YmxlbSB3aXRoIHJlc3RyaWN0ZWQtZG1hWzFdIGFuZA0KPnRoZSBpbmFiaWxpdHkgb2YgdGhlIERN
QSBBUEkgdG8gcmVjb2duaXplIHRoYXQgYSBibG9jayBvZiBtZW1vcnkgaXMNCj5hbHJlYWR5IGRl
Y3J5cHRlZC4NCj4NCj5Ib3dldmVyLCBpbiB5b3VyIGNhc2UsIGFkZGluZyBhIG5ldyBhdHRyIOKA
nERNQV9BVFRSX0NDX0RFQ1JZUFRFROKAnSB3b3Jrcw0KPndlbGwgYXMgZG1hLWJ1ZiBvd25zIHRo
ZSBtZW1vcnksIGFuZCBpcyBib3RoIHJlc3BvbnNpYmxlIGZvciB0aGUNCj5zZXRfbWVtb3J5X2Rl
Y3J5cHRlZCgpIGFuZCBwYXNzaW5nIHRoZSBETUEgYXR0cnMuDQo+DQo+T24gdGhlIG90aGVyIGhh
bmQsIGZvciByZXN0cmljdGVkLWRtYSwgdGhlIG1lbW9yeSBkZWNyeXB0aW9uIGlzIGRlZXANCj5p
biB0aGUgRE1BIGRpcmVjdCBtZW1vcnkgYWxsb2NhdGlvbiBhbmQgdGhlIERNQSBBUEkgY2FsbGVy
cyAoZm9yIGV4DQo+dmlydGlvIGRyaXZlcnMpIGFyZSBjbHVlbGVzcyBhYm91dCBpdCBhbmQgY2Fu
4oCZdCBwYXNzIGFueSBhdHRycy4NCj5NeSBwcm9wb3NhbCB3YXMgc3BlY2lmaWMgdG8gcmVzdHJp
Y3RlZC1kbWEgYW5kIHdvbuKAmXQgd29yayBmb3IgeW91ciBjYXNlLg0KPg0KPkkgYW0gd29uZGVy
aW5nIGlmIHRoZSBrZXJuZWwgc2hvdWxkIGhhdmUgYSBtb3JlIHNvbGlkLCB1bmlmaWVkIG1ldGhv
ZA0KPmZvciBpZGVudGlmeWluZyBhbHJlYWR5LWRlY3J5cHRlZCBtZW1vcnkgaW5zdGVhZC4gUGVy
aGFwcyB3ZSBuZWVkIGENCj53YXkgZm9yIHRoZSBETUEgQVBJIHRvIG5hdGl2ZWx5IHJlY29nbml6
ZSB0aGUgZW5jcnlwdGlvbiBzdGF0ZSBvZiBhDQo+cGh5c2ljYWwgcGFnZSAod29ya2luZyBhbG9u
Z3NpZGUgZm9yY2VfZG1hX3VuZW5jcnlwdGVkKGRldikpLCByYXRoZXINCj50aGFuIHJlbHlpbmcg
b24gY2FsbGVyLXByb3ZpZGVkIGF0dHJpYnV0ZXM/DQoNCkkgYWN0dWFsbHkgaGFkIGl0IG9yaWdp
bmFsbHkgaW1wbGVtZW50ZWQgcHJvYmFibHkgaW4gdGhlIHNpbWlsYXIgd2F5IHlvdQ0Kc3VnZ2Vz
dC4gSSBoYWQgYSBiaXQgaW4gcGFnZS9mb2xpbyBzdHJ1Y3QgdG8gaW5kaWNhdGUgdGhlDQoic2hh
cmVkL2RlY3J5cHRlZCIgc3RhdGUuIEhvd2V2ZXIgSSB3YXMgdG9sZCB0aGF0IGFkZGluZyBzdWNo
IGJpdCBpcw0KYmFzaWNhbGx5IGEgbm8tZ28uIElzbid0IHRoYXQgcmlnaHQ/DQoNCg0KPg0KPlsx
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAzMDUxNzAzMzUuOTYzNTY4LTEtc21v
c3RhZmFAZ29vZ2xlLmNvbS8NCj4NCj5UaGFua3MsDQo+TW9zdGFmYQ0KPg0KPg0KPj4gDQo+PiBK
aXJpIFBpcmtvICgyKToNCj4+ICAgZG1hLW1hcHBpbmc6IGludHJvZHVjZSBETUFfQVRUUl9DQ19E
RUNSWVBURUQgZm9yIHByZS1kZWNyeXB0ZWQgbWVtb3J5DQo+PiAgIGRtYS1idWY6IGhlYXBzOiBz
eXN0ZW06IGFkZCBzeXN0ZW1fY2NfZGVjcnlwdGVkIGhlYXAgZm9yIGV4cGxpY2l0bHkNCj4+ICAg
ICBkZWNyeXB0ZWQgbWVtb3J5DQo+PiANCj4+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVt
X2hlYXAuYyB8IDEwMyArKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+PiAgaW5jbHVkZS9s
aW51eC9kbWEtbWFwcGluZy5oICAgICAgICAgfCAgIDYgKysNCj4+ICBpbmNsdWRlL3RyYWNlL2V2
ZW50cy9kbWEuaCAgICAgICAgICB8ICAgMyArLQ0KPj4gIGtlcm5lbC9kbWEvZGlyZWN0LmggICAg
ICAgICAgICAgICAgIHwgIDE0ICsrKy0NCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDExNyBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPj4gDQo+PiAtLSANCj4+IDIuNTEuMQ0KPj4gDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
