Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A216A38A6E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2025 18:13:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5628644B0D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2025 17:13:40 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 084E6440E0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2025 17:13:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=Rjd2KS+p;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1739812401; cv=none;
	d=zohomail.com; s=zohoarc;
	b=k+tHooWYvQM/fTEDMF9ezaEaNcNSJYBkzIiQ5gYnA1s+3bx/eQDyDFcm842u1C+Od48XNLeZMak2czPD8B1/rODrhFdI2MIgmoFC1F7/Ee+AkyRvkDE6/9pBiejLz42nXzLXYA56KU65CMHevZQuYUKLflElQBzxOABdbOief6o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1739812401; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
	bh=3Fph9gBvBdd9qmUmWvxYRjabYcIMdMHd6ordv+O4sLg=;
	b=KSAw0obWukX0sFZBbkLaLz6jEKUjpGXXObeMa2qicojvn363bKCfxEXfKXxKUhWnn4xrBX1QWqm8T7iguleboQTP8rWY6MeH6emq6bPla6SJL9rZ7jL05VEFT369KNtnrwYqNiJPyO2m+rYTZ+vsrnpQDaNQ5wYIdGPN8Vsm1qw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739812401;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=3Fph9gBvBdd9qmUmWvxYRjabYcIMdMHd6ordv+O4sLg=;
	b=Rjd2KS+pyolOdpxLdQH4Uhq0zh5C+s+JS58HSjxRu92ooURgwQwe/W782xX1EE5V
	GSO6vnT/sXwLkXIRUH964iZ0pNV5pXmFoaB9Tld/at7BIl3SxIcaG0MuYRjcxNnCPa2
	IEzL7doicT0pCrWRWcbefPHDYGhpJoDt3GBHI5e0=
Received: by mx.zohomail.com with SMTPS id 1739812399496485.4004078827304;
	Mon, 17 Feb 2025 09:13:19 -0800 (PST)
Message-ID: <f9f6c845-154e-4efe-b73a-b7ea561ae291@collabora.com>
Date: Mon, 17 Feb 2025 20:13:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, tzimmermann@suse.de, simona@ffwll.ch,
 tvrtko.ursulin@igalia.com, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20250211163109.12200-1-christian.koenig@amd.com>
 <20250211163109.12200-4-christian.koenig@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20250211163109.12200-4-christian.koenig@amd.com>
X-ZohoMailClient: External
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 084E6440E0
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[136.143.188.112:from];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:136.143.188.0/24:c];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:2639, ipnet:136.143.188.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,suse.de,ffwll.ch,igalia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BN55K3KF65UTHD2LYTLDTJIOZSFZ22S7
X-Message-ID-Hash: BN55K3KF65UTHD2LYTLDTJIOZSFZ22S7
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] dma-buf: dma-buf: stop mapping sg_tables on attach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BN55K3KF65UTHD2LYTLDTJIOZSFZ22S7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMi8xMS8yNSAxOTozMSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQXMgYSB3b3JrYXJv
dW5kIHRvIHNtb290aGx5IHRyYW5zaXQgZnJvbSBzdGF0aWMgdG8gZHluYW1pYyBETUEtYnVmDQo+
IGhhbmRsaW5nIHdlIGNhY2hlZCB0aGUgc2dfdGFibGUgb24gYXR0YWNoIGlmIGR5bmFtaWMgaGFu
ZGxpbmcgbWlzbWF0Y2hlZA0KPiBiZXR3ZWVuIGV4cG9ydGVyIGFuZCBpbXBvcnRlci4NCj4gDQo+
IFNpbmNlIERtaXRyeSBhbmQgVGhvbWFzIGNsZWFuZWQgdGhhdCB1cCBhbmQgYWxzbyBkb2N1bWVu
dGVkIHRoZSBsb2NrDQo+IGhhbmRsaW5nIHdlIGNhbiBkcm9wIHRoaXMgd29ya2Fyb3VuZCBub3cu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE0OSArKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEt
YnVmLmggICB8ICAxNCAtLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKyks
IDEwNyBkZWxldGlvbnMoLSkNCg0KTG9va3MgZ29vZCwgYXMgbG9uZyBhcyBJR1QgcGFzc2VzLg0K
DQpSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3Jh
LmNvbT4NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
