Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFVBJu1ZDWpuwQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 08:51:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 245355886AB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 08:51:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B47B140964
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 06:51:23 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 32835401B7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 06:51:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=VyBRdddL;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1779259867; cv=none;
	d=zohomail.com; s=zohoarc;
	b=KLBTvPulm89Uhd0hrY1hQxXpIYJTSoEldAsWjb56Om/sPBEyUexkg5UYpxkjSIk1Tx3YG4JCbfdh8YTIPVlDM648iQOWxDquMJesPQzQ1s7tWNmdTKndnH3qvAMDXU7EGxZBtv7NsMBN23KUsSXVwWwQ0guDs+qdzXfxl33EynE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1779259867; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=QB0aBnlsYuDj3KTGtL3n3HDsaBFK9L6LJNUmMJHUjY4=;
	b=TQ4oJAJ5bv64cMiBCvxeYed1fC9/kbkPzdecrFlE/ugUI2IfR8DX8iWgrLWnKVSKl4dr7qwDZfIZnvn7uZtrrqmJ2VX12BDTTIxworgPS5sKSNt3gB/zsyJ0J4OBDGDUqHiIz4ne1ULiW8oWwJbNqpky+i4eJTHT/vpTs56Uu8A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779259867;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=QB0aBnlsYuDj3KTGtL3n3HDsaBFK9L6LJNUmMJHUjY4=;
	b=VyBRdddLQLmNW2QZQ1V6CEYZt7nEdTgavdMYB1VurOPR3uoTzn/Njegc8oYzgnEi
	mtKQuEWzIzHS0ewTEdnXWjWXclzSQloH9N7gOvvhx4GhpUqSfJd8GKNonSYeD/ppXd3
	6mN7WVM9Azu9aLYjLp/XnYTR32QL+/zIiNg2Xbmg=
Received: by mx.zohomail.com with SMTPS id 1779259866052944.3067294851667;
	Tue, 19 May 2026 23:51:06 -0700 (PDT)
Message-ID: <f6bcef23-5510-4aad-bf6a-4e1ecfc8d474@collabora.com>
Date: Wed, 20 May 2026 09:50:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org
References: <20260519082247.34470-1-kartikey406@gmail.com>
 <2e23513c-9d59-4891-acfe-9f1fbcbce778@amd.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <2e23513c-9d59-4891-acfe-9f1fbcbce778@amd.com>
X-ZohoMailClient: External
X-Spamd-Bar: ----
Message-ID-Hash: AOEMBZWL25K3MDOQVCK6UUTX3TP6C6MD
X-Message-ID-Hash: AOEMBZWL25K3MDOQVCK6UUTX3TP6C6MD
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOEMBZWL25K3MDOQVCK6UUTX3TP6C6MD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:mid]
X-Rspamd-Queue-Id: 245355886AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAxMToyNywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS8xOS8yNiAx
MDoyMiwgRGVlcGFuc2h1IEthcnRpa2V5IHdyb3RlOg0KPj4gdmlydGlvX2dwdV9jdXJzb3JfcGxh
bmVfdXBkYXRlKCkgYW5kIHZpcnRpb19ncHVfcmVzb3VyY2VfZmx1c2goKSBsb2NrDQo+PiB0aGUg
ZnJhbWVidWZmZXIgQk8ncyBkbWFfcmVzdiB2aWEgdmlydGlvX2dwdV9hcnJheV9sb2NrX3Jlc3Yo
KSBhbmQNCj4+IGlnbm9yZSBpdHMgcmV0dXJuIHZhbHVlLiBUaGUgZnVuY3Rpb24gY2FuIGZhaWwg
d2l0aCAtRUlOVFIgZnJvbQ0KPj4gZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKCkgKHNpZ25h
bCBkdXJpbmcgbG9jayB3YWl0KSBvciB3aXRoDQo+PiAtRU5PTUVNIGZyb20gZG1hX3Jlc3ZfcmVz
ZXJ2ZV9mZW5jZXMoKSAoZmVuY2Ugc2xvdCBhbGxvY2F0aW9uKSwNCj4+IGxlYXZpbmcgdGhlIHJl
c3YgbG9jayBub3QgaGVsZC4gVGhlIHF1ZXVlIHBhdGggdGhlbiB3YWxrcyB0aGUgb2JqZWN0DQo+
PiBhcnJheSBhbmQgY2FsbHMgZG1hX3Jlc3ZfYWRkX2ZlbmNlKCksIHdoaWNoIHJlcXVpcmVzIHRo
ZSBsb2NrIGhlbGQ7DQo+PiB3aXRoIGxvY2tkZXAgZW5hYmxlZCB0aGlzIHRyaXBzIGRtYV9yZXN2
X2Fzc2VydF9oZWxkKCk6DQo+Pg0KPj4gICBXQVJOSU5HOiBkcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYzoyOTYgYXQgZG1hX3Jlc3ZfYWRkX2ZlbmNlKzB4NzFlLzB4ODQwDQo+PiAgIENhbGwgVHJh
Y2U6DQo+PiAgICB2aXJ0aW9fZ3B1X2FycmF5X2FkZF9mZW5jZQ0KPj4gICAgdmlydGlvX2dwdV9x
dWV1ZV9jdHJsX3Nncw0KPj4gICAgdmlydGlvX2dwdV9xdWV1ZV9mZW5jZWRfY3RybF9idWZmZXIN
Cj4+ICAgIHZpcnRpb19ncHVfY3Vyc29yX3BsYW5lX3VwZGF0ZQ0KPj4gICAgZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0X3BsYW5lcw0KPj4gICAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwN
Cj4+ICAgIGNvbW1pdF90YWlsDQo+PiAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXQNCj4+ICAg
IGRybV9hdG9taWNfY29tbWl0DQo+PiAgICBkcm1fYXRvbWljX2hlbHBlcl91cGRhdGVfcGxhbmUN
Cj4+ICAgIF9fc2V0cGxhbmVfYXRvbWljDQo+PiAgICBkcm1fbW9kZV9jdXJzb3JfdW5pdmVyc2Fs
DQo+PiAgICBkcm1fbW9kZV9jdXJzb3JfY29tbW9uDQo+PiAgICBkcm1fbW9kZV9jdXJzb3JfaW9j
dGwNCj4+ICAgIGRybV9pb2N0bA0KPj4gICAgX194NjRfc3lzX2lvY3RsDQo+Pg0KPj4gQmV5b25k
IHRoZSBXQVJOLCBtdXRhdGluZyB0aGUgZG1hX3Jlc3YgZmVuY2UgbGlzdCB3aXRob3V0IHRoZSBs
b2NrDQo+PiByYWNlcyB3aXRoIGNvbmN1cnJlbnQgcmVhZGVycy93cml0ZXJzIGFuZCBjYW4gY29y
cnVwdCB0aGUgbGlzdC4NCj4gDQo+IFdlbGwgd2h5IGFyZSB5b3UgdHJ5aW5nIHRvIGFkZCBhIGZl
bmNlIG9uIGFuIGF0b21pYyBtb2RlIHNldCBpbiB0aGUgZmlyc3QgcGxhY2U/DQo+IA0KPiBUaGF0
IGlzIHVzdWFsbHkgYW4gaWxsZWdhbCBvcGVyYXRpb24gaGVyZS4NClRoYXQgaXMgcHJlLWV4aXN0
aW5nIGluIHRoZSBkcml2ZXIuIEl0IHBlcmZvcm1zIGRyYXcgb3BlcmF0aW9uIGFuZCBpbg0Kc29t
ZSBjYXNlcyB3YWl0cyBmb3IgdGhlIGNvbXBsZXRpb24gZHVyaW5nIGF0b21pYy4gV2hldGhlciBh
bGwgdGhhdA0Kc3luY2luZyBpcyBjb3JyZWN0IGlzIGhhcmQgdG8gc2F5IGltbWVkaWF0ZWx5IGFz
IHNvbWUgb2YgaXQgbWF5IGJlDQpoaXN0b3JpY2FsIGVkZ2UgY2FzZXMuDQoNCi0tIA0KQmVzdCBy
ZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
