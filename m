Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IHbiLmPgRGr02QoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 11:39:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8296EBAB0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 11:39:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=lr1yvTGC;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28B8040CBA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 09:39:46 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id F10F63F8FF
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 09:38:52 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4gqw2138s3z9tyS;
	Wed,  1 Jul 2026 11:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782898729; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6lLxWwm2ec6TjhN1sKZlPI0XtM2PK8Ut5JL5Jjbj3qs=;
	b=lr1yvTGCneGTgWvHzocgbEa3X9Cc+RSxPIv1QRAjU5QfhiiLMQt/FrTiOUpAAdBCy8a0ms
	88FPTilhuyKAvQepybbnQZBTcq0Mg3JU5zu8QwxJF8I8M7o6gchNXdLRmkca23arQW1IoT
	+K5ztSNyzhtTkcV8xvZ/8+lNvFa5aYJRyo1jxvgMQRBg0KzEutK1zHGcb/Q5iKQkvjJdb9
	Q7dfVzoMZb8ylqmUEEdAf8UqNIW+ropTFymGXSLTPz/b/pb7GUFN14EyEbHoyMoblFawlk
	nFQPmFkmtqoDXElUGbbsRC+lyQomb0ToqhpCwyqXbUb5JzyHc7COZjzl+dYp0A==
Message-ID: <5ea5741e6cb618f6c66adeaaae9565f8debd796e.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Philipp Stanner <phasta@kernel.org>, Matthew Brost
 <matthew.brost@intel.com>,  Danilo Krummrich	 <dakr@kernel.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?=	 <ckoenig.leichtzumerken@gmail.com>, Maarten
 Lankhorst	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Marco Pagani <marco.pagani@linux.dev>, Tvrtko
 Ursulin	 <tvrtko.ursulin@igalia.com>, Boris Brezillon
 <boris.brezillon@collabora.com>
Date: Wed, 01 Jul 2026 11:38:40 +0200
In-Reply-To: <20260701085920.3253248-7-phasta@kernel.org>
References: <20260701085920.3253248-2-phasta@kernel.org>
	 <20260701085920.3253248-7-phasta@kernel.org>
MIME-Version: 1.0
X-MBO-RS-META: on3uiyyneea4wy3tajn8aazoxccnp7rp
X-MBO-RS-ID: ca2de0c17790b5f71d5
X-Spamd-Bar: +
X-Spam-Level: *
Message-ID-Hash: ZPRCSMD2EHA22PJNET4DG2VZIORMJRGH
X-Message-ID-Hash: ZPRCSMD2EHA22PJNET4DG2VZIORMJRGH
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 5/5] drm/sched: Remove entity->entity_idle
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZPRCSMD2EHA22PJNET4DG2VZIORMJRGH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,igalia.com,collabora.com];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E8296EBAB0

T24gV2VkLCAyMDI2LTA3LTAxIGF0IDEwOjU5ICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6
DQo+IFRoZSBjb21wbGV0aW9uIGVudGl0eS0+ZW50aXR5X2lkbGUgb25seSBleGlzdGVkIGJlY2F1
c2UgdGhlIGVudGl0eSB3YXMNCj4gbm90IHByb3Blcmx5IGxvY2tlZCB0aHJvdWdoIGl0J3Mgc3Bp
bmxvY2suIFRoZSBjb21wbGV0aW9uIHNlcnZlZCB0bw0KPiBpbmZvcm0gd2FpdGVycyBhYm91dCB3
aGV0aGVyIHRoZSBlbnRpdHkgaXMgYWN0dWFsbHkgaWRsZSwgd2hpY2ggaXMNCj4gc29tZXRoaW5n
IGxvY2tpbmcgKHByZXZpb3VzbHkgYWRkZWQgdG8gZHJtX3NjaGVkX2VudGl0eV9pc19pZGxlKCkp
IGNhbg0KPiBmdWxseSBhY2hpZXZlLg0KPiANCj4gUmVtb3ZlIHRoZSBzdXJwbHVzIGNvbXBsZXRp
b24uDQo+IA0KDQpb4oCmXQ0KDQo+IC0JLyogTWFrZSBzdXJlIHRoaXMgZW50aXR5IGlzIG5vdCB1
c2VkIGJ5IHRoZSBzY2hlZHVsZXIgYXQgdGhlIG1vbWVudCAqLw0KPiAtCXdhaXRfZm9yX2NvbXBs
ZXRpb24oJmVudGl0eS0+ZW50aXR5X2lkbGUpOw0KDQoNCkFscmlnaHQsIG15IGJhZCwgdHVybnMg
b3V0IEkgaGFkIGEgYml0IHRvbyBtdWNoIHN0ZWFtIG9uIHRoZSBrZXR0bGUgYW5kDQp3ZSBjYW5u
b3QgcmVtb3ZlIGl0IGJlY2F1c2Ugb2YgdGhlIGRybV9zY2hlZF9lbnRpdHlfZmx1c2goKSBiZWlu
ZyBhYmxlDQp0byBwZXJmb3JtIGFuIGFzeW5jaHJvbm91cyBraWxsIHdoaWxlIHRoZSBzY2hlZHVs
ZXIgd29yayBpdGVtIGlzIHN0aWxsDQpydW5uaW5nLg0KDQoNCkJ1dCBJIHRoaW5rIHdlIGNvdWxk
IHByb2JhYmx5IHB1dCBUdnJ0a28ncyBmbHVzaF93b3JrKCkgWzFdIGhlcmUgdG8gZ2V0DQp0aGUg
c2FtZSByZXN1bHQuDQoNCk9waW5pb25zPw0KDQpQLg0KDQoNClsxXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA2MTExMjM0MjMuMzk4MTktMS10dnJ0a28udXJzdWxpbkBp
Z2FsaWEuY29tLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
