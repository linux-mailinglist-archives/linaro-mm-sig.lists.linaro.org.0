Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aFqvE4lgPWrS2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C739A6C7B54
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=Acgb+nfK;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2534446D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:08:23 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 3E9483F91D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 14:33:50 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-c0b97e268f3so562681866b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 07:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782225229; x=1782830029; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ehF4t4EAD/IAoOVIU9uPF+z2dKiiXJu9e/jUG/hiyTQ=;
        b=Acgb+nfKWVkEOIqV4Fp4+FDkEP8aqEML5apbm8zP0xi5Syv9RVH1mWWBNOYX2ACj9t
         c6NMuydDU7196/wre4dRdRRNx69BxvbPy5Q6+ysUMOD1yLQUSEPfboSvsuZIhPgHI+Bh
         0T6NLYKtI5Nfl8IAbYhFMj/Z9yy5sSe7XLpUBSSS7Y1zYfGPV2gThAJ4OtxcMaLlZnXX
         RUqT92D2GDgenvJDzT8GCCiyCZvRTz9E2IqK7/3jy2IBekq1WbUTtS7GUAfH1D+qhcvQ
         PCOD3ZHh7NnMDz7eHHi6RB5zFW7vV9KdaWWGq4LXci+DF17lyV5v9BRUrOMkkPshM2eC
         3WEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782225229; x=1782830029;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ehF4t4EAD/IAoOVIU9uPF+z2dKiiXJu9e/jUG/hiyTQ=;
        b=LwX3hfy4O/NHg7U2T01WVMf+3UVS9u2Nc+rXTKEwObjP8FP/am9esHGeBoqbp7BeE/
         Bd/s5zhPL4B4VMmuxDUX0F/kfnl5xje4583zONCAu1ykSk+g8p2sTxs1DHv93JCpLWgG
         nzBfMGezL2PobuDgCyF2CR22p8cXe9S/jRvk4C2TrQTOhT+kv1tiCdhDWjETd8oOeWf0
         DbmTBOgFVUiEegqZjQQV0mxyEyjkb+gta+04jRaqH/JHLi1lgK2K3N7nZNIoJ2NmOLMm
         cMMGj/uHNz3wlajFsuGBqiyI150hr3ZZdToc3pb3EOmtHBul/xIHSFVSrP/t8S1GWaBv
         y0iA==
X-Forwarded-Encrypted: i=1; AFNElJ/lI3QrGsXPGTXHpMJ6wllccjD30jvQaLZlnapakKhlHD6ZyHLtCthM0HT9ejFjR9f08eO6wvQzHJnZRdQx@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+HPNlUSTvjcIyBV8/Iz9095WQtBg2tRDS2la4k8e37DAmRWk8
	S/3NMwEG1o0A5g0a4jnuMoW9d3aJGwcbZozH0RIxNyiyZClkQHLAI1dRugUfPFKh2DFzVw==
X-Gm-Gg: AfdE7cls0Oup7JM6jBY7A0TX1kMZFDYNiCnsOH9qZ/rBAqDJz27Fq2ZEcuzyMa4DezB
	xLQRZhf+nhiAk9kChwNEXjaJa+0vR5wh6XTt2spYULfU30Ll3zr4N3/0Xmfsleg4KHZKtWI1Qpk
	gBBtld4SpgDKWElbXZsNTHP8wQGyzWmuftFhwBZmh3z+qvOYpA1XxPEEewe0YFzScSQf38QqO96
	zVSXkaha2M1cMnsoVpUsvTpkrTBiwEUc5fQp9AjjCg+XSJVNv1q6bOgx5SLNJiwc3zM4/VPqrwU
	CrjXDZk2d3rn50yxfIorpJhHMzshnpjyZrz3m6G0dsDZyFJPyVWUeSunwqJWfvX7DUrf5gZ4+K2
	hW8Dq/iXU/yduArDjq20OF1XMuBxSUk5cQ1ioYa/MvstKm8H2eyy1JUCJ/UD+IJX80qSr0F0Ku6
	JNxUdaFp4+1pdxpMx2uSg=
X-Received: by 2002:a17:907:9486:b0:bae:d29c:4e28 with SMTP id a640c23a62f3a-c108db17724mr165292866b.12.1782225229090;
        Tue, 23 Jun 2026 07:33:49 -0700 (PDT)
Received: from draszik.lan ([212.129.77.116])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c610e4c76sm536270666b.46.2026.06.23.07.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:33:48 -0700 (PDT)
Message-ID: <1467578694a17b2b4978a6193cf21db324daff98.camel@linaro.org>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: phasta@kernel.org, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Tue, 23 Jun 2026 15:33:48 +0100
In-Reply-To: <f59d6080cf31f424ebcf0e6086b4a93623813a6e.camel@mailbox.org>
References: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
			 <1cfd56b7f1a166e25d6588d66a621524f3d983de.camel@mailbox.org>
		 <6483098adae29787862473e39b1f9cf3c3f16625.camel@linaro.org>
	 <f59d6080cf31f424ebcf0e6086b4a93623813a6e.camel@mailbox.org>
User-Agent: Evolution 3.56.2-8+build1 
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 63TNM346S2CNWGXNJXWBFGWJ4MGMN5HK
X-Message-ID-Hash: 63TNM346S2CNWGXNJXWBFGWJ4MGMN5HK
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/63TNM346S2CNWGXNJXWBFGWJ4MGMN5HK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[50];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	DKIM_TRACE(0.00)[linaro.org:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:mid,linaro.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C739A6C7B54

SGkgUGhpbGlwcCwNCg0KT24gVHVlLCAyMDI2LTA2LTIzIGF0IDEzOjU4ICswMjAwLCBQaGlsaXBw
IFN0YW5uZXIgd3JvdGU6DQo+IE9uIFR1ZSwgMjAyNi0wNi0yMyBhdCAxMjozNyArMDEwMCwgQW5k
csOpIERyYXN6aWsgd3JvdGU6DQo+ID4gT24gVGh1LCAyMDI2LTA2LTE4IGF0IDE3OjU2ICswMjAw
LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gPiANCj4gPiA+IEkgY29udGludWUgdG8gYmVs
aWV2ZSBiZWNhdXNlIG9mIGJ1Z3MgbGlrZSB0aGlzIGFuZCB0aGUgb25lcyBJIGhhdmUNCj4gPiA+
IHF1b3RlZCBpbiB0aGUgdGhyZWFkcyBhYm92ZSB0aGUgcm9idXN0bmVzcyBvZiB0aGUga2VybmVs
IGNvdWxkIGJlDQo+ID4gPiBncmVhdGx5IGltcHJvdmVkIGlmIHdlIGNvdWxkIGdldCBkbWFfZmVu
Y2UgZnVsbHkgc3luY2hyb25pemVkIHdpdGggaXRzDQo+ID4gPiBsb2NrLg0KPiA+IA0KPiA+IE9u
IHRvcCBvZiB0aGF0LCBzYXNoaWtvIGhpZ2hsaWdodGVkwqAgKHZpYSBteSBvdGhlciBwYXRjaCkg
dGhhdCB0aGUgZXhpc3RpbmcNCj4gPiBjb2RlIGlzIG1pc3Npbmcgc29tZSBtZW1vcnkgYmFycmll
cnM6DQo+ID4gDQo+ID4gaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjE4LWxp
bnV4LWRybV9jcnRjX2ZpeC12MS0xLTgwMWYyOWM5ODUzZEBsaW5hcm8ub3JnP3BhcnQ9MQ0KPiA+
IA0KPiA+IEkgYmVsaWV2ZSBMb2NrIHN5bmNocm9uaXphdGlvbiB3b3VsZCByZXNvbHZlIHRoYXQg
KGFzIHdvdWxkIGFkZGluZyBleHBsaWNpdA0KPiA+IG1lbW9yeSBiYXJyaWVycykuDQo+IA0KPiBU
aGF0IGlzIGJlaW5nIGRpc2N1c3NlZCBpbiB0aGUgdGhyZWFkIEkgbGlua2VkLCB3aGVyZSBHYXJ5
IGxpc3RzIHdoaWNoDQo+IGJhcnJpZXJzIHlvdSB3b3VsZCBuZWVkIGZvciAocHJlc3VtYWJseSBj
b3JyZWN0KSBsb2NrbGVzcyBtYWdpYy4NCg0KSGF2aW5nIHJlYWQgR2FyeSdzIHN1Z2dlc3Rpb24s
IHRoYXQgYWxpZ25zIHdpdGggd2hhdCBJIGhhZCBpbiBtaW5kLg0KDQo+IEhvd2V2ZXIsIGlmIG15
IGlzc3VlIHdlcmUgdG8gYmUgc29sdmVkIHdpdGggYmFycmllcnMsIHRoZQ0KPiB0ZXN0X2FuZF9z
ZXRfYml0KCkgaW4gZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKCkgd291bGQgaGF2
ZSB0bw0KPiBiZSByZXBsYWNlZCB3aXRoIHRoZSBtb3JlIHdlYWtseSBvcmRlcmVkIHRlc3RfYml0
KCkgYW5kIHNldF9iaXQoKSwNCj4gbWF5YmUgY3JlYXRpbmcgb3RoZXIgcGl0ZmFsbHMuDQoNCkZv
ciB0aGUgYXZvaWRhbmNlIG9mIGRvdWJ0cywgSSdtIG5vdCBzYXlpbmcgdGhhdCBhbGwgdGhlIGlz
c3VlcyB5b3UgcmFpc2VkDQpjYW4gYmUgc29sdmVkIGJ5IGJhcnJpZXJzIGluc3RlYWQgb2YgYXBw
cm9wcmlhdGUgbG9ja3MgKEkgZG9uJ3Qga25vdyBlbm91Z2gNCmFib3V0IHRoZSBjb2RlIGFuZCBp
c3N1ZXMgaW4gZ2VuZXJhbCBoZXJlKS4NCg0KSSBkbyB0aGluayBob3dldmVyIHRoYXQgYXBwcm9w
cmlhdGUgbG9ja3Mgd2lsbCBmaXggdGhlIG9yZGVyaW5nIGlzc3VlDQpoaWdobGlnaHRlZCBieSBz
YXNoaWtvIChpLmUuICsxIGZvciB5b3VyIGFyZ3VtZW50KS4gQmFycmllcnMgd291bGQgZml4IHRo
aXMNCnNwZWNpZmljIGlzc3VlLCB0b28sIGJ1dCB0aGF0IGlzIG5vdCBhIHN0YXRlbWVudCBhYm91
dCBhbnkgd2lkZXIgaXNzdWVzLiANCg0KPiBUaGUgb3JkZXJpbmcgaXNzdWUgaW4gdGhlIGdldF8q
X25hbWUoKSBmdW5jdGlvbnMgcGxheXMgaW50byB0aGF0Lg0KPiBTZXR0aW5nIHRoZSBiaXQgd291
bGQgdGhlbiBiZSBkb25lIGFmdGVyIHNldHRpbmcgdGhlIG9wcy1wb2ludGVyIHRvDQo+IE5VTEwu
IFNvIG9uZSB3b3VsZCBoYXZlIHRvIHRyeSB0byBtb3ZlIHRoZSBOVUxMIHNldCwgdG9vLg0KPiAN
Cj4gTG9uZyBzdG9yeSBzaG9ydCwgdGhpcyBpcyBwYWluZnVsIGFuZCBzdWJ0bGUuDQo+IA0KPiBC
dXQgSSB0aGluayB3aGF0IHdlIGFyZSByZWFsaXppbmcgb3ZlciBhbmQgb3ZlciBhZ2FpbiBpcyB0
aGF0IGRtYV9mZW5jZQ0KPiBoYXMgbWFueSBzdWJ0bGV0aWVzIHRvIGl0cyBBUEkgY29udHJhY3Qs
IGFuZCB0aGUgaW1wbGVtZW50YXRpb24ncw0KPiBzcGFycmluZyB1c2Ugb2Ygc3BpbmxvY2tzIGxl
YWRzIHRvIHdvcmthcm91bmRzIHdoZXJlIHBlb3BsZSB0YWtlIGxvY2tzDQo+IG1hbnVhbGx5IG9y
IGhhdmUgdG8gZG8gYW4gUkNVIGRhbmNlLg0KPiANCj4gTm90ZSB0aGF0IENocmlzdGlhbiBpcyBz
dHJvbmdseSBvcHBvc2VkIHRvIGd1YXJkaW5nIGV2ZXJ5dGhpbmcgd2l0aA0KPiBsb2NrcywgaW4g
cGFydCBmb3Igc3VwcG9zZWRseSBvY2N1cmluZyBkZWFkbG9ja3MgaW4gdGhlIGZlbmNlIGNhbGxi
YWNrcw0KPiB3aGVuIHRoZSBkcml2ZXIgbmVlZHMgdG8gdGFrZSBpdHMgb3duIGxvY2tzLg0KDQp3
d19tdXRleCBjb3VsZCBoZWxwIGFnYWluc3QgZGVhZGxvY2tzLCBidXQgbWlnaHQgYWZmZWN0IHBl
cmZvcm1hbmNlLCBpbiBjYXNlDQp0aGVzZSBhcmUgYWxsIGNyaXRpY2FsIGNvZGUgcGF0aHMgKElE
SyksDQoNCj4gVGhlIGNvbW11bml0eSBkaXNjdXNzaW9uIHJlZ2FyZGluZyB0aGF0IHByb2JsZW0g
aXMgY3VycmVudGx5IGluIHNvbWUNCj4gc29ydCBvZiBkZWFkIGVuZCwgd2hlcmUgbm9uZSBvZiB1
cyBzZWVtcyB0byBrbm93IHdoYXQgdGhlIGNvcnJlY3QgcGF0aA0KPiBmb3J3YXJkIGlzLg0KDQpQ
bGVhc2UgaWdub3JlIGlmIHRoZSBmb2xsb3dpbmcgZG9lc24ndCBtYWtlIHNlbnNlLCBJJ20ganVz
dCBhIGJ5c3RhbmRlciA6LSkNCkhvdyBhYm91dCBhdCBsZWFzdCBhZGRpbmcgdGhlIHJlcXVpcmVk
IGJhcnJpZXJzIGFuZCByZWxhdGVkIGNoYW5nZXMsIGFuZA0KdGFraW5nIGl0IGZyb20gdGhlcmU/
IFRoaXMgd291bGQgc29sdmUgc29tZSBpbW1lZGlhdGUgYW5kIGVhc3kgdG8gaGl0DQppc3N1ZXMg
b24gQXJtNjQ/IElmIHRoZXkgdHVybiBvdXQgdG8gYmUgaW5zdWZmaWNpZW50LCBjb2RlIGNhbiBz
dGlsbA0KYmUgY2hhbmdlZC4NCg0KDQoNCj4gPiA+IA0KPiBbLi4uXQ0KPiBNeSB1bmRlcnN0YW5k
aW5nIG9mIHRoZSBjdXJyZW50IHNpdHVhdGlvbiBpcyB0aGF0IGFzIGFuIGlzc3VlciBvZg0KPiBk
bWFfZmVuY2UncyB5b3UsIGluIGdlbmVyYWwsIHNob3VsZCB3YWl0IGZvciBhIGdyYWNlIHBlcmlv
ZCB1bnRpbCB5b3UNCj4gcGVyZm9ybSBvcGVyYXRpb25zIGxpa2UgZHJpdmVyIHVubG9hZCwgb3Is
IG1vcmUgZ2VuZXJhbGx5LCBoYXZlIGZlbmNlLQ0KPiByZWxhdGVkIHJlc291cmNlcyBhbmQgc3Vj
aCBiZWluZyBhY2Nlc3NlZCB0aHJvdWdoIGNhbGxiYWNrcyBnbyBhd2F5Lg0KDQpJZiBJIHVuZGVy
c3RhbmQgY29ycmVjdGx5LCBzaW1wbHkgd2FpdGluZyBmb3IgYSBncmFjZSBwZXJpb2QgaW4gdGhl
DQpkcml2ZXIncyB1bmJpbmQgc2hvdWxkIGJlIHRoZSB3YXkgdG8gZ28uDQoNCg0KPiBEYW5pbG8g
Li4uIE1heWJlIGhlJ3MgZ290IHRoZSB0aW1lIHRvIHNoYXJlIHNvbWUgZGV0YWlscyB3aXRoIHlv
dSB0aGF0IGFyZQ0KPiByZWxldmFudCB0byB5b3VyIHdvcmsuDQoNCldpbGwgd2FpdCBhIGxpdHRs
ZSA6LSkNCg0KDQoNCkJUVywgdGhhbmtzIFBoaWxpcHAgZm9yIGFsbCB0aGVzZSBkZXRhaWxzLCBt
dWNoIGFwcHJlY2lhdGVkLg0KDQpDaGVlcnMsDQpBLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
