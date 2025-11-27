Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPvEGlgB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDA4410E84
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F16844464
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:43 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 31C913F683
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 15:43:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=rJBnWCwd;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dHLLg5Mnxz9v0b;
	Thu, 27 Nov 2025 16:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764258219; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T8BebGp6817BarcOhYkOTFKpNtGZhH0Hzg/x4d8jTPI=;
	b=rJBnWCwdjqhyXax+vj9jEdfvvNHmHBKxf4Vx01UM2VZR/M8uhzUla8075dSW3u3MUThOFq
	UWPLNvuVWnYgUi3hZGxb/HuABbU5m8EYXT11ECG736HnrLFHM9gj58Y2/oMWek3lAugwCc
	UlPh9rJ1VYSTVlC5FfoNsxxDV43GeHaJGexjJpfdR6vz0zxTn096zYv3GisOcvElyWLmZ/
	5xd4OUXnH6yJXZ9MpWXgXBMU6Sy9EMyG7fCbspCKodX1QSuQ/Isi+unePiiija3oVnnr/e
	bpgsIo8xtw8Q2BsyLHjNH7xFDCju7gwS1rE468ebDHd3/vbbZo4wBsxwOz8XRg==
Message-ID: <5c69f4849cb3d9dc087c303a33ba385925e126eb.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: "Kuehling, Felix" <felix.kuehling@amd.com>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, phasta@kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan
 <gustavo@padovan.org>, Alex Deucher <alexander.deucher@amd.com>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,  Matthew Brost
 <matthew.brost@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>
Date: Thu, 27 Nov 2025 16:43:28 +0100
In-Reply-To: <39263b3b-3574-43ae-aec1-73fe39e29f10@amd.com>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <20251126131914.149445-4-phasta@kernel.org>
	 <cef83fed-5994-4c77-962c-9c7aac9f7306@amd.com>
	 <d46f753e660694ab46c65409a5e43f050b7eb2d9.camel@mailbox.org>
	 <b1c3dd51-1ba9-4036-b964-8e9f4350bbee@amd.com>
	 <39263b3b-3574-43ae-aec1-73fe39e29f10@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: guh68fw61fno75gu3xahdopeu8c9fbtb
X-MBO-RS-ID: ca2c12074ac69eba2f0
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KTIX3B3NSKEC6UV2FWKOG3QSNQ2EGF65
X-Message-ID-Hash: KTIX3B3NSKEC6UV2FWKOG3QSNQ2EGF65
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:19 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] amd/amdkfd: Ignore return code of dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KTIX3B3NSKEC6UV2FWKOG3QSNQ2EGF65/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3359];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: 0BDA4410E84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTI3IGF0IDEwOjA4IC0wNTAwLCBLdWVobGluZywgRmVsaXggd3JvdGU6
DQo+IE9uIDIwMjUtMTEtMjcgMDQ6NTUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gT24g
MTEvMjcvMjUgMTA6NDgsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiA+IA0KDQpb4oCmXQ0K
DQo+ID4gPiBUaGUgaXNzdWUgbm93IGlzIHRoYXQgZG1hX2ZlbmNlX3NpZ25hbCgpJ3MgcmV0dXJu
IGNvZGUgaXMgYWN0dWFsbHkgbm9uLQ0KPiA+ID4gcmFjeSwgYmVjYXVzZSBjaGVjayArIGJpdC1z
ZXQgYXJlIHByb3RlY3RlZCBieSBsb2NrLg0KPiA+ID4gDQo+ID4gPiBDaHJpc3RpYW4ncyBuZXcg
c3BpbmxvY2sgc2VyaWVzIHdvdWxkIGFkZCBhIGxvY2sgZnVuY3Rpb24gZm9yIGZlbmNlczoNCj4g
PiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI1MTExMzE0NTMzMi4xNjgw
NS01LWNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbS8NCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiBTbyBJ
IHN1cHBvc2UgdGhpcyBzaG91bGQgd29yazoNCj4gPiA+IA0KPiA+ID4gZG1hX2ZlbmNlX2xvY2tf
aXJxc2F2ZShlZiwgZmxhZ3MpOw0KPiA+ID4gaWYgKGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2Zs
YWcoZWYpKSB7DQo+ID4gPiAJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGVmLCBmbGFncyk7
DQo+ID4gPiAJcmV0dXJuIHRydWU7DQo+ID4gPiB9DQo+ID4gPiBkbWFfZmVuY2Vfc2lnbmFsX2xv
Y2tlZChlZik7DQo+ID4gPiBkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZWYsIGZsYWdzKTsN
Cj4gPiA+IA0KPiA+ID4gcmV0dXJuIGZhbHNlOw0KPiA+ID4gDQo+ID4gPiANCj4gPiA+ICsgc29t
ZSBjb3NtZXRpYyBhZGp1c3RtZW50cyBmb3IgdGhlIGJvb2xlYW4gb2YgY291cnNlLg0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IFdvdWxkIHRoYXQgZmx5IGFuZCBiZSByZWFzb25hYmxlPyBARmVsaXgs
IENocmlzdGlhbi4NCj4gPiBJIHdhcyBqdXN0IGFib3V0IHRvIHJlcGx5IHdpdGggdGhlIHNhbWUg
aWRlYSB3aGVuIHlvdXIgbWFpbCBhcnJpdmVkLg0KPiANCj4gSSBhZ3JlZSBhcyB3ZWxsLiBUaGUg
aW1wb3J0YW50IGZlYXR1cmUgaXMgdGhhdCB3ZSBuZWVkIHRvIHRlc3QgYW5kIA0KPiBzaWduYWwg
dGhlIGZlbmNlIGF0b21pY2FsbHkuIEl0IG1heSBldmVuIG1ha2Ugc2Vuc2UgdG8gYWRkIGEgZnVu
Y3Rpb24NCj4gZm9yIHRoYXQgImRtYV9mZW5jZV90ZXN0X2FuZF9zaWduYWwiIHRoYXQgcHJlc2Vy
dmVzIHRoZSBvcmlnaW5hbCANCj4gYmVoYXZpb3VyIG9mIGRtYV9mZW5jZV9zaWduYWwuIDspDQoN
CkZpbmUgYnkgbWUgaWYgdGhlIG1haW50YWluZXIgYWdyZWVzDQoNClAuDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
