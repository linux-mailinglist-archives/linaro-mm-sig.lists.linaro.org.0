Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fvtrFRR1Omrs9QcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 13:59:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C15F26B6EEE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 13:59:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=o6IFlnUJ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFA91409AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 11:59:14 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id C61E7400F1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 11:59:04 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4gl3WT44wbz9t9n;
	Tue, 23 Jun 2026 13:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782215941; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pFwdqmW21qxLJH3W3ALeQpHtM3Gll3yJ9POED2YZ2WY=;
	b=o6IFlnUJwHXTp23zSidnt+l/Ma+86RWMLB9P30q8dTUNipVhkSEV2h5LXzceLesT/zcq4g
	dAyfmU+CIz1xqDPjdBGM7jpUJMyPY+7k8i3alJu5UMa9f16AWpA81UZPvY35WPcB1ihj60
	tmYvsCrqNOxHfsyjMD0tPH+SRz01NhJtvKKqXd3Y9dCkFQm72Lbb7dLJAziYfyOd/Z9cWx
	XCR6+30c1gveeRcH/Vf9EwEoH1Sc10rar8gB9rJesU2PdlHN4ak2cxAxX9lrELOhC8+zYq
	eDwev6YJTU6SZLyoUYc2tfhJu9JM75bbssXGkASrOnaL4UGWjlgBarJdtu5LLQ==
Message-ID: <f59d6080cf31f424ebcf0e6086b4a93623813a6e.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	phasta@kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,  Simona Vetter
 <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Tue, 23 Jun 2026 13:58:46 +0200
In-Reply-To: <6483098adae29787862473e39b1f9cf3c3f16625.camel@linaro.org>
References: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
		 <1cfd56b7f1a166e25d6588d66a621524f3d983de.camel@mailbox.org>
	 <6483098adae29787862473e39b1f9cf3c3f16625.camel@linaro.org>
MIME-Version: 1.0
X-MBO-RS-META: gqq6rmhozrpo34a59ejobmzahu94wzns
X-MBO-RS-ID: f5dd2d7dc6ec6fb48aa
X-Spamd-Bar: ---
Message-ID-Hash: UMDTZP2P6DLD6FNTZZ7JL3X7O3PXY27U
X-Message-ID-Hash: UMDTZP2P6DLD6FNTZZ7JL3X7O3PXY27U
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMDTZP2P6DLD6FNTZZ7JL3X7O3PXY27U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andre.draszik@linaro.org,m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,amd.com,igalia.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,sashiko.dev:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C15F26B6EEE

T24gVHVlLCAyMDI2LTA2LTIzIGF0IDEyOjM3ICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToN
Cj4gSGksDQo+IA0KPiBPbiBUaHUsIDIwMjYtMDYtMTggYXQgMTc6NTYgKzAyMDAsIFBoaWxpcHAg
U3Rhbm5lciB3cm90ZToNCj4gPiArQ2MgRGFuaWxvDQo+ID4gDQo+ID4gT24gVGh1LCAyMDI2LTA2
LTE4IGF0IDE1OjAzICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToNCj4gPiA+IFNpbmNlIGNv
bW1pdCA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2
MyIpLA0KPiA+ID4gSSdtIHNlZWluZyB0aGUgQlVHX09OKCkgdHJpZ2dlcmluZyBpbiBkcm1fY3J0
YydzIGZlbmNlX3RvX2NydGMoKSB2aWENCj4gPiA+IGRybV9jcnRjX2ZlbmNlX2dldF9kcml2ZXJf
bmFtZSgpIHJlZ3VsYXJseToNCj4gPiA+IA0KPiA+ID4gwqDCoMKgIENhbGwgdHJhY2U6DQo+ID4g
PiDCoMKgwqDCoCBwYW5pYysweDU4LzB4NWMNCj4gPiA+IMKgwqDCoMKgIGRpZSsweDE2MC8weDE3
OA0KPiA+ID4gwqDCoMKgwqAgYnVnX2Jya19oYW5kbGVyKzB4NzAvMHhhNA0KPiA+ID4gwqDCoMKg
wqAgY2FsbF9lbDFfYnJlYWtfaG9vaysweDNjLzB4MWEwDQo+ID4gPiDCoMKgwqDCoCBkb19lbDFf
YnJrNjQrMHgyNC8weDc0DQo+ID4gPiDCoMKgwqDCoCBlbDFfYnJrNjQrMHgzNC8weDU0DQo+ID4g
PiDCoMKgwqDCoCBlbDFoXzY0X3N5bmNfaGFuZGxlcisweDgwLzB4ZmMNCj4gPiA+IMKgwqDCoMKg
IGVsMWhfNjRfc3luYysweDg0LzB4ODgNCj4gPiA+IMKgwqDCoMKgIGRybV9jcnRjX2ZlbmNlX2dl
dF9kcml2ZXJfbmFtZSsweDYwLzB4NjggKFApDQo+ID4gPiDCoMKgwqDCoCBzeW5jX2ZpbGVfZ2V0
X25hbWUrMHgxODQvMHg0NWMNCj4gPiA+IMKgwqDCoMKgIHN5bmNfZmlsZV9pb2N0bCsweDQwNC8w
eGY3MA0KPiA+ID4gwqDCoMKgwqAgX19hcm02NF9zeXNfaW9jdGwrMHgxMjQvMHgxZGMNCj4gPiA+
IA0KPiA+ID4gVGhpcyBsb29rcyB0byBiZSBjYXVzZWQgYnkgYSBjb2RlIGZsb3cgc2ltaWxhciB0
byB0aGUgZm9sbG93aW5nOg0KPiA+ID4gDQo+ID4gPiArKysgc25pcCArKysNCj4gPiA+IHRocmVh
ZCBBwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdGhyZWFkIEINCj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlvY3RsKFNZTkNfSU9D
X0ZJTEVfSU5GTykNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeW5jX2ZpbGVfaW9jdGwoKQ0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN5bmNfZmlsZV9nZXRfbmFtZSgpDQo+ID4gPiBkbWFfZmVuY2Vf
c2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoKcKgIGRtYV9mZW5jZV9kcml2ZXJfbmFtZSgpDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKQ0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2Zs
YWcoKSkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wcy0+Z2V0X2RyaXZlcl9uYW1l
KGZlbmNlKSBpLmUuDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fY3J0Y19mZW5j
ZV9nZXRfZHJpdmVyX25hbWUoKQ0KPiA+ID4gdGVzdF9hbmRfc2V0X2JpdChTSUdOQUxFRCkNCj4g
PiA+IFJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCkNCj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkcm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25hbWUoKQ0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBCVUdfT04ocmN1X2FjY2Vzc19wb2ludGVyKGZlbmNlLT5vcHMpDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIT0gJmRybV9jcnRjX2ZlbmNlX29wcykNCj4g
PiANCj4gPiBOb3cgdGhpcyBsb29rcyBsaWtlIGEgdmVyeSBzaW1pbGFyIHByb2JsZW0gdGhhdCBJ
IGhhdmUgcmVjZW50bHkgYmVlbg0KPiA+IGNvbmNlcm5lZCB3aXRoOg0KPiA+IA0KPiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDYxMjEwNDI1MS4yMjY0NzA3LTItcGhh
c3RhQGtlcm5lbC5vcmcvDQo+ID4gDQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRl
dmVsL2ZhMGRjOTc1N2JmODM0MzUxNmM0YjE1NmEyYjcwZWM5MWI2NGVmOGYuY2FtZWxAbWFpbGJv
eC5vcmcvDQo+ID4gDQo+ID4gDQo+ID4gSSBjb250aW51ZSB0byBiZWxpZXZlIGJlY2F1c2Ugb2Yg
YnVncyBsaWtlIHRoaXMgYW5kIHRoZSBvbmVzIEkgaGF2ZQ0KPiA+IHF1b3RlZCBpbiB0aGUgdGhy
ZWFkcyBhYm92ZSB0aGUgcm9idXN0bmVzcyBvZiB0aGUga2VybmVsIGNvdWxkIGJlDQo+ID4gZ3Jl
YXRseSBpbXByb3ZlZCBpZiB3ZSBjb3VsZCBnZXQgZG1hX2ZlbmNlIGZ1bGx5IHN5bmNocm9uaXpl
ZCB3aXRoIGl0cw0KPiA+IGxvY2suDQo+IA0KPiBPbiB0b3Agb2YgdGhhdCwgc2FzaGlrbyBoaWdo
bGlnaHRlZMKgICh2aWEgbXkgb3RoZXIgcGF0Y2gpIHRoYXQgdGhlIGV4aXN0aW5nDQo+IGNvZGUg
aXMgbWlzc2luZyBzb21lIG1lbW9yeSBiYXJyaWVyczoNCj4gDQo+IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDYxOC1saW51eC1kcm1fY3J0Y19maXgtdjEtMS04MDFmMjljOTg1
M2RAbGluYXJvLm9yZz9wYXJ0PTENCj4gDQo+IEkgYmVsaWV2ZSBMb2NrIHN5bmNocm9uaXphdGlv
biB3b3VsZCByZXNvbHZlIHRoYXQgKGFzIHdvdWxkIGFkZGluZyBleHBsaWNpdA0KPiBtZW1vcnkg
YmFycmllcnMpLg0KDQpUaGF0IGlzIGJlaW5nIGRpc2N1c3NlZCBpbiB0aGUgdGhyZWFkIEkgbGlu
a2VkLCB3aGVyZSBHYXJ5IGxpc3RzIHdoaWNoDQpiYXJyaWVycyB5b3Ugd291bGQgbmVlZCBmb3Ig
KHByZXN1bWFibHkgY29ycmVjdCkgbG9ja2xlc3MgbWFnaWMuDQoNCkhvd2V2ZXIsIGlmIG15IGlz
c3VlIHdlcmUgdG8gYmUgc29sdmVkIHdpdGggYmFycmllcnMsIHRoZQ0KdGVzdF9hbmRfc2V0X2Jp
dCgpIGluIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCgpIHdvdWxkIGhhdmUgdG8N
CmJlIHJlcGxhY2VkIHdpdGggdGhlIG1vcmUgd2Vha2x5IG9yZGVyZWQgdGVzdF9iaXQoKSBhbmQg
c2V0X2JpdCgpLA0KbWF5YmUgY3JlYXRpbmcgb3RoZXIgcGl0ZmFsbHMuDQoNClRoZSBvcmRlcmlu
ZyBpc3N1ZSBpbiB0aGUgZ2V0XypfbmFtZSgpIGZ1bmN0aW9ucyBwbGF5cyBpbnRvIHRoYXQuDQpT
ZXR0aW5nIHRoZSBiaXQgd291bGQgdGhlbiBiZSBkb25lIGFmdGVyIHNldHRpbmcgdGhlIG9wcy1w
b2ludGVyIHRvDQpOVUxMLiBTbyBvbmUgd291bGQgaGF2ZSB0byB0cnkgdG8gbW92ZSB0aGUgTlVM
TCBzZXQsIHRvby4NCg0KTG9uZyBzdG9yeSBzaG9ydCwgdGhpcyBpcyBwYWluZnVsIGFuZCBzdWJ0
bGUuDQoNCkJ1dCBJIHRoaW5rIHdoYXQgd2UgYXJlIHJlYWxpemluZyBvdmVyIGFuZCBvdmVyIGFn
YWluIGlzIHRoYXQgZG1hX2ZlbmNlDQpoYXMgbWFueSBzdWJ0bGV0aWVzIHRvIGl0cyBBUEkgY29u
dHJhY3QsIGFuZCB0aGUgaW1wbGVtZW50YXRpb24ncw0Kc3BhcnJpbmcgdXNlIG9mIHNwaW5sb2Nr
cyBsZWFkcyB0byB3b3JrYXJvdW5kcyB3aGVyZSBwZW9wbGUgdGFrZSBsb2Nrcw0KbWFudWFsbHkg
b3IgaGF2ZSB0byBkbyBhbiBSQ1UgZGFuY2UuDQoNCk5vdGUgdGhhdCBDaHJpc3RpYW4gaXMgc3Ry
b25nbHkgb3Bwb3NlZCB0byBndWFyZGluZyBldmVyeXRoaW5nIHdpdGgNCmxvY2tzLCBpbiBwYXJ0
IGZvciBzdXBwb3NlZGx5IG9jY3VyaW5nIGRlYWRsb2NrcyBpbiB0aGUgZmVuY2UgY2FsbGJhY2tz
DQp3aGVuIHRoZSBkcml2ZXIgbmVlZHMgdG8gdGFrZSBpdHMgb3duIGxvY2tzLg0KDQpUaGUgY29t
bXVuaXR5IGRpc2N1c3Npb24gcmVnYXJkaW5nIHRoYXQgcHJvYmxlbSBpcyBjdXJyZW50bHkgaW4g
c29tZQ0Kc29ydCBvZiBkZWFkIGVuZCwgd2hlcmUgbm9uZSBvZiB1cyBzZWVtcyB0byBrbm93IHdo
YXQgdGhlIGNvcnJlY3QgcGF0aA0KZm9yd2FyZCBpcy4NCg0KZHJtX3NjaGVkIHVzZXJzIChhbmQg
ZnV0dXJlIHVzZXJzIGluIFJ1c3QpIHVzZSBpbnRlcm1lZGlhdGUgZmVuY2VzDQp3aGljaCBkZWNv
dXBsZSBlLmcuIHVzZXJzcGFjZSBmcm9tIHRoZSBhY3R1YWwgaGFyZHdhcmUgZmVuY2VzLiBTbyBv
bmUNCnBhdGggZm9yd2FyZCBtaWdodCBiZSB0byBxdWVzdGlvbiB0aGUgY2FsbGJhY2tzIGluIGdl
bmVyYWwgYW5kIHRoaW5rDQphYm91dCBzb21lIHNvcnQgb2YgcmVwbGFjZW1lbnQgZm9yIHRoZW0u
DQoNCj4gDQo+IFsuLi5dDQo+ID4gPiANCj4gDQo+ID4gRG9lcyB0aGUgQ1JUQyBvciBEUk0gZGV2
aWNlIG5lZWQgdG8gYmUga2VwdCBhbGl2ZSBmb3IgdGhlIFJDVSBncmFjZSBwZXJpb2QsDQo+ID4g
b3Igc2hvdWxkIHRoZSBmZW5jZSBob2xkIGEgcHJvcGVyIHJlZmVyZW5jZSB0byBwcmV2ZW50IHRo
ZSB1c2UtYWZ0ZXItZnJlZQ0KPiA+IHdoZW4gZ2V0X2RyaXZlcl9uYW1lKCkgYW5kIGdldF90aW1l
bGluZV9uYW1lKCkgYWNjZXNzIHRoZSBmcmVlZCBDUlRDDQo+ID4gc3RydWN0dXJlPw0KPiANCj4g
RG8geW91IGd1eXMgaGF2ZSBhbnkgcHJlZmVyZW5jZSBvbiB0aGF0PyBJdCBhcHBlYXJzIHRoZSB1
c2UtYWZ0ZXItZnJlZQ0KPiBzaG91bGQgYmUgcmVzb2x2ZWQgYmVmb3JlIG1lcmdpbmcgdGhlIHJl
bW92YWwgb2YgdGhlIEJVR19PTigpLCBhbmQgSSdkIGxpa2UNCj4gdG8gcHJvZ3Jlc3Mgb24gdGhp
cy4NCg0KTXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgY3VycmVudCBzaXR1YXRpb24gaXMgdGhhdCBh
cyBhbiBpc3N1ZXIgb2YNCmRtYV9mZW5jZSdzIHlvdSwgaW4gZ2VuZXJhbCwgc2hvdWxkIHdhaXQg
Zm9yIGEgZ3JhY2UgcGVyaW9kIHVudGlsIHlvdQ0KcGVyZm9ybSBvcGVyYXRpb25zIGxpa2UgZHJp
dmVyIHVubG9hZCwgb3IsIG1vcmUgZ2VuZXJhbGx5LCBoYXZlIGZlbmNlLQ0KcmVsYXRlZCByZXNv
dXJjZXMgYW5kIHN1Y2ggYmVpbmcgYWNjZXNzZWQgdGhyb3VnaCBjYWxsYmFja3MgZ28gYXdheS4N
Cg0KRGFuaWxvIGhhcyByZWNlbnRseSBtZW50aW9uZWQgc29tZSBsaWZlLXRpbWUgaW5jb25zaXN0
ZW5jaWVzIGJldHdlZW4NCndpZGVyIGtlcm5lbCBkZXZpY2UgbW9kZWwgYW5kIERSTSBkZXZpY2Ug
bW9kZWwgdGhhdCBtaWdodCBiZSByZWxhdGVkIHRvDQp0aGF0IGRpc2N1c3Npb24sIGFuZCB3aGlj
aCBtYWRlIGhpbSBvYmplY3QgYWdhaW5zdCBzb21lIFJDVQ0KcmVxdWlyZW1lbnRzLg0KDQpNYXli
ZSBoZSdzIGdvdCB0aGUgdGltZSB0byBzaGFyZSBzb21lIGRldGFpbHMgd2l0aCB5b3UgdGhhdCBh
cmUNCnJlbGV2YW50IHRvIHlvdXIgd29yay4NCg0KDQpQLg0KDQo+IA0KPiBDaGVlcnMsDQo+IEFu
ZHJlJw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
