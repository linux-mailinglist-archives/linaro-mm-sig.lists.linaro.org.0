Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wH0cMgFABGoqFgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:10:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA35304DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:10:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44DF040305
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 09:10:24 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id D3AEC3F77A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 09:10:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=Jf8V2eOO;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1778663410; cv=none;
	d=zohomail.com; s=zohoarc;
	b=fKPVwADO8NoII5QZA/9nW44lDanjOSOPhHM423Zx+9+6zesDGOnMff+bl6Rvh35UgZazW4f6pUAJvbXAvKHqhZZYFdnmRXBF06iR1kPcV68F6IKn45f8ugIZ8e4PJ7XblV87S1FasZpuW7NarX5/YHkLXMUQ3iWeg5UVpuMhmHg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778663410; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=J+PeEpwgMGG+eT1L4WzFjaLfRNxviLWx3M2E/85kEME=;
	b=LWW9GtphE/fmKFD55IBBhxIMs4RggAQDNovGJ63G4XWnycQHO5zTbncfVhvn8bBHggKZZUhjQBOziPDbusIDx0usWV5F4GoxPV1yeIwUdB2LfIsVfiVpUaDZZ/xiaJLbZ2XE1NyxxM9w+i2ohLfDSfrQe3cfbQ6JjUt4B1rCsRQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778663410;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=J+PeEpwgMGG+eT1L4WzFjaLfRNxviLWx3M2E/85kEME=;
	b=Jf8V2eOOgD0CHQN4V+0lESC/eA0s1LNDholC2vph3WSKS4d0gSXu+TJW0UbFGg89
	A/7jUvEcwwmIPXG2OJJQZoQi/h3CGidnrHf3CfQCPBsxoautZJNHcFBo8FbSwEEvaZW
	E4WUHbJwdUDYlCgS0OJ9jhB9OvEW+ZhL6xqB/ifM=
Received: by mx.zohomail.com with SMTPS id 177866340828668.99618190513445;
	Wed, 13 May 2026 02:10:08 -0700 (PDT)
Message-ID: <65da2ce9-a2ab-4800-a73e-1a26082d0605@collabora.com>
Date: Wed, 13 May 2026 12:10:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Deepanshu Kartikey <kartikey406@gmail.com>
References: <20260512020718.108044-1-kartikey406@gmail.com>
 <d1bc8d7d-3a4f-4ede-8266-81cc66bf11b5@collabora.com>
 <CADhLXY7N0eLpA30eV4Rb=F4vzCf9XYtDjMpxBSJtGeMWNi6Cwg@mail.gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CADhLXY7N0eLpA30eV4Rb=F4vzCf9XYtDjMpxBSJtGeMWNi6Cwg@mail.gmail.com>
X-ZohoMailClient: External
X-Spamd-Bar: ----
Message-ID-Hash: 4WHIFSKGGI5Y5DAWZAT23R7MMCYPJYCN
X-Message-ID-Hash: 4WHIFSKGGI5Y5DAWZAT23R7MMCYPJYCN
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: airlied@redhat.com, kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/virtio: move cursor resv lock acquisition to prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WHIFSKGGI5Y5DAWZAT23R7MMCYPJYCN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 37DA35304DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,syzkaller.appspotmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.327];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[collabora.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:email,collabora.com:mid]
X-Rspamd-Action: no action

T24gNS8xMy8yNiAwNDo1NSwgRGVlcGFuc2h1IEthcnRpa2V5IHdyb3RlOg0KPiBPbiBUdWUsIE1h
eSAxMiwgMjAyNiBhdCAxMjowNOKAr1BNIERtaXRyeSBPc2lwZW5rbw0KPiA8ZG1pdHJ5Lm9zaXBl
bmtvQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPj4NCj4+IEknbSBnZXR0aW5nIGxvY2t1cCB3aXRo
IHRoaXMgcGF0Y2ggYXBwbGllZCBhbmQgbm93IHNlZSB0aGF0DQo+PiB2aXJ0aW9fZ3B1X3Jlc291
cmNlX2ZsdXNoKCkgYWxzbyBsb2NrcyBCTy4NCj4+DQo+PiBFYXNpZXN0IG9wdGlvbiBtaWdodCBi
ZSB0byBhZGQgdW5pbnRlcnJ1cHRpYmxlIHZhcmlhbnQgb2YNCj4+IHZpcnRpb19ncHVfYXJyYXlf
bG9ja19yZXN2KCkuIENvdWxkIHlvdSBwbGVhc2UgdHJ5IGl0IGZvciB2Mz8NCj4+DQo+PiAtLQ0K
Pj4gQmVzdCByZWdhcmRzLA0KPj4gRG1pdHJ5DQo+IA0KPiBIaSBEbWl0cnksDQo+IA0KPiBUaGFu
a3MgZm9yIHRlc3RpbmcgYW5kIGNhdGNoaW5nIHRoZSBsb2NrdXAuIEJlZm9yZSBJIHNlbmQgdjMs
IHdhbnQNCj4gdG8gY29uZmlybSB0aGUgYXBwcm9hY2g6DQo+IA0KPiAgIDEuIFJldmVydCB2Midz
IHByZXBhcmVfZmIgLyBjbGVhbnVwX2ZiIC8gcGxhbmVfc3RhdGUgY2hhbmdlczsNCj4gICAgICBr
ZWVwIHRoZSBsb2NrIGFjcXVpc2l0aW9uIGluc2lkZSBjdXJzb3JfcGxhbmVfdXBkYXRlIGxpa2UN
Cj4gICAgICB0aGUgb3JpZ2luYWwgY29kZS4NCj4gDQo+ICAgMi4gQWRkIHZpcnRpb19ncHVfYXJy
YXlfbG9ja19yZXN2X3VuaW50ZXJydXB0aWJsZSgpIGluDQo+ICAgICAgdmlydGdwdV9nZW0uYywg
bWlycm9yaW5nIHRoZSBleGlzdGluZyBoZWxwZXIgYnV0IHVzaW5nDQo+ICAgICAgZG1hX3Jlc3Zf
bG9jaygpIGluc3RlYWQgb2YgZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKCkgb24NCj4gICAg
ICB0aGUgbmVudHM9PTEgcGF0aC4gRGVjbGFyZSBpdCBpbiB2aXJ0Z3B1X2Rydi5oLg0KPiANCj4g
ICAzLiBJbiBjdXJzb3JfcGxhbmVfdXBkYXRlLCBjYWxsIHRoZSBuZXcgaGVscGVyIGFuZCBjaGVj
ayBpdHMNCj4gICAgICByZXR1cm4uIFRoZSBzaWduYWwgcGF0aCBpcyBjbG9zZWQ7IC1FTk9NRU0g
ZnJvbQ0KPiAgICAgIGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKCkgcmVtYWlucyBhbmQgaXMgaGFu
ZGxlZCBieSBmcmVlaW5nDQo+ICAgICAgb2JqcyBhbmQgc2tpcHBpbmcgdGhlIGN1cnNvciB1cGRh
dGUgZm9yIHRoYXQgZnJhbWUuDQo+IA0KPiBBIHNraXBwZWQgY3Vyc29yIGZyYW1lIG9uIEVOT01F
TSBpcyB0aGUgcmVtYWluaW5nIGZhaWx1cmUgbW9kZSBpbg0KPiAuYXRvbWljX3VwZGF0ZTsgdGhp
cyBhdm9pZHMgdGhlIGxvY2t1cCB3aXRoIHZpcnRpb19ncHVfcmVzb3VyY2VfZmx1c2goKQ0KPiB0
aGF0IHYyJ3MgYnJvYWRlciBsb2NrIHNjb3BlIGNhdXNlZC4NCj4gDQo+IERvZXMgdGhhdCBtYXRj
aCB3aGF0IHlvdSBoYWQgaW4gbWluZD8NCg0KU291bmRzIGdvb2QuIFRoZSB2aXJ0aW9fZ3B1X3Jl
c291cmNlX2ZsdXNoKCkgYWxzbyBzaG91bGQgYmUgdXBkYXRlZCB0bw0KdXNlIHVuaW50ZXJydXB0
aWJsZSgpIHZhcmlhbnQuDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
