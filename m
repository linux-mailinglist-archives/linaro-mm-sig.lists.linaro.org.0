Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 95664AF9263
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Jul 2025 14:19:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26139454F2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Jul 2025 12:19:31 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 493803F6DF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Jul 2025 12:19:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Oxp0Fzn8;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=pass (policy=none) header.from=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XbaDjDWqdnKDdqcosm9iq5MePhQ6bbb1VeFVI/I13F4=; b=Oxp0Fzn8fYvGKvkCgubLNFDlMF
	pOs+6UGpF2H0Mlk6S3K6OJgTYWqLOToouotKVhTQp9Ed3B0Vp6vt50DczZxr8rsWhC/S5FQF9aEkf
	QBv+Dj/G+Wr7ttZ8lLgl1X56tblIgnKX1e+E0JaKpmHr4te54gsJwquvcLjym703VJXI4bConOtMd
	8UjPQNXmcSuWt5/wUqEkdRU5zcBFhdPLk3VKCoAmK9v1MXMqDYT3aHihITfSxay+9GUxwl7cC7SOe
	4CFdYm/XS3u8PSRyWZh8R99NlEFAuxnybM08YBHL4RSjf1xsnj2rKDgyMXgxRenpAvQoH27cq0Cw4
	IQX7a2kg==;
Received: from [189.7.87.79] (helo=[192.168.0.7])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1uXfNW-00CQHV-Rd; Fri, 04 Jul 2025 14:18:55 +0200
Message-ID: <dc5317a4-0adc-4371-871c-79b7d54614a6@igalia.com>
Date: Fri, 4 Jul 2025 09:18:47 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
References: <20250701132142.76899-3-phasta@kernel.org>
 <20250701132142.76899-4-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20250701132142.76899-4-phasta@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 493803F6DF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.28 / 15.00];
	BAYES_HAM(-2.98)[99.90%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[igalia.com,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,intel.com,linux.intel.com,suse.de,linaro.org,igalia.com,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim,igalia.com:mid];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5XGMCSQ6STQZYCZM6B3NJBNMB4OHDCGW
X-Message-ID-Hash: 5XGMCSQ6STQZYCZM6B3NJBNMB4OHDCGW
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/sched: Avoid memory leaks with cancel_job() callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5XGMCSQ6STQZYCZM6B3NJBNMB4OHDCGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgUGhpbGlwcCwNCg0KT24gMDEvMDcvMjUgMTA6MjEsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToN
Cj4gU2luY2UgaXRzIGluY2VwdGlvbiwgdGhlIEdQVSBzY2hlZHVsZXIgY2FuIGxlYWsgbWVtb3J5
IGlmIHRoZSBkcml2ZXINCj4gY2FsbHMgZHJtX3NjaGVkX2ZpbmkoKSB3aGlsZSB0aGVyZSBhcmUg
c3RpbGwgam9icyBpbiBmbGlnaHQuDQo+IA0KPiBUaGUgc2ltcGxlc3Qgd2F5IHRvIHNvbHZlIHRo
aXMgaW4gYSBiYWNrd2FyZHMgY29tcGF0aWJsZSBtYW5uZXIgaXMgYnkNCj4gYWRkaW5nIGEgbmV3
IGNhbGxiYWNrLCBkcm1fc2NoZWRfYmFja2VuZF9vcHMuY2FuY2VsX2pvYigpLCB3aGljaA0KPiBp
bnN0cnVjdHMgdGhlIGRyaXZlciB0byBzaWduYWwgdGhlIGhhcmR3YXJlIGZlbmNlIGFzc29jaWF0
ZWQgd2l0aCB0aGUNCj4gam9iLiBBZnRlcndhcmRzLCB0aGUgc2NoZWR1bGVyIGNhbiBzYXZlbHkg
dXNlIHRoZSBlc3RhYmxpc2hlZCBmcmVlX2pvYigpDQoNCnMvc2F2ZWx5L3NhZmVseQ0KDQo+IGNh
bGxiYWNrIGZvciBmcmVlaW5nIHRoZSBqb2IuDQo+IA0KPiBJbXBsZW1lbnQgdGhlIG5ldyBiYWNr
ZW5kX29wcyBjYWxsYmFjayBjYW5jZWxfam9iKCkuDQo+IA0KPiBTdWdnZXN0ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KPiBMaW5rOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNTA0MTgxMTMyMTEuNjk5NTYtMS10dnJ0a28udXJz
dWxpbkBpZ2FsaWEuY29tLw0KPiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0
YUBrZXJuZWwub3JnPg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlh
LmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmENCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
