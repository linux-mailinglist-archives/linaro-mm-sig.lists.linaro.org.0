Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CINbAVFwVmpP5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D87575C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=cIeUf+72;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6FE640EBF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:22:23 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 1FE61401F6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 10:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZJoxLXbBFInuBRIgEp6vSOmCAY0GKp91Nz1MsnjS+Ec=; b=cIeUf+72RjbqJ5oE5oxo0NGSFT
	C5BTemsq66N2D1T6UjUHwhE+g74dchGlAlDqaVZjg66Aqlp9l2KotbodIsJLfgF7Qt0zus8j8QAN2
	z0sQiSHirOnP1SpRTHavzS091EysJuQI+jgKZShfz+/+eWmIm//0eZLSpMAxC/T0btUxmvT4iFQhf
	qexggOzHn+/zvVJP19OxSK1RA3PTMYZjl5RYHAmH6sjs2dhAcLrZEmJv8mqV+Ukm4Syn/wui8Gn8W
	J2BGBl0UP6UE0lWEVnY6YmRpzm2IXurcNQImFN90aOhk42/r55jViLZqR4jrFsKOH2UxnZbIE0TCW
	ZosmOfOA==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wgh2e-009hAL-3I; Mon, 06 Jul 2026 12:59:12 +0200
Message-ID: <441ad8f8-3618-4c53-995a-2b81f283ab16@igalia.com>
Date: Mon, 6 Jul 2026 11:59:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Marco Pagani
 <marco.pagani@linux.dev>, Boris Brezillon <boris.brezillon@collabora.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
 <20260701085920.3253248-3-phasta@kernel.org>
 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
 <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
 <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
 <0af946b7bef6958f103598083919bbf933423676.camel@mailbox.org>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <0af946b7bef6958f103598083919bbf933423676.camel@mailbox.org>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4NEEW6JNHRTVNL7TXKRYJFDYL4E5IYFG
X-Message-ID-Hash: 4NEEW6JNHRTVNL7TXKRYJFDYL4E5IYFG
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:29 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4NEEW6JNHRTVNL7TXKRYJFDYL4E5IYFG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[198];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,ursulin.net,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C53D87575C7

DQpPbiAwNi8wNy8yMDI2IDEwOjQyLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+IE9uIE1vbiwg
MjAyNi0wNy0wNiBhdCAwOTo0NSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+PiBPbiAw
My8wNy8yMDI2IDE1OjQ3LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4NCj4+Pg0KPj4+IEkg
dGhpbmsgaXQgY2FuIGRldGFpbCB3aGljaCBmdW5jdGlvbnMgd2lsbCBub3cgYmUgbG9ja2VkOyBi
dXQNCj4+PiBtZW50aW9uaW5nIHRoZSB1c2VycyB3b3VsZCBiZSBvdmVya2lsbCBhbmQgaXMgdW5j
b21tb24gZm9yIEFQSSByZXdvcmtzLg0KPj4NCj4+IEhlcmUgSSBkaXNhZ3JlZSBxdWl0ZSBzdHJv
bmdseS4gR2l2ZW4gdGhlIHBhdGNoIGlzIG1ha2luZyBzdHJvbmcgY2xhaW1zDQo+PiB0aGF0IHRo
ZSBsb2NrbGVzcyBhY2Nlc3Mgd2FzIGFkZGVkIGZvciBubyBvYnZpb3VzIHJlYXNvbiwgYW5kIHRo
YXQgd2UNCj4+IGhhdmUgbm93IGVzdGFibGlzaGVkIHRoZSBsb2NrbGVzcyBoZWxwZXIgaXMgaW4g
ZmFjdCB1c2VkIG9uIHRoZQ0KPj4gc3VibWlzc2lvbiBwYXRocywgaXQgaXMgcmVhbGx5IHJlcXVp
cmVkIHRoYXQgdGhvc2Ugc3Ryb25nIGNsYWltcyBhcmUNCj4+IGJhY2tlZCBieSBhIGNvbmNyZXRl
IGFuYWx5c2lzIGluc3RlYWQgb2YganVzdCBzYXlpbmcgIm5vdCBwZXJmb3JtYW5jZQ0KPj4gY3Jp
dGljYWwgaW4gYW55IHdheSIuDQo+IA0KPiBUaGlzIGlzIGEgc3Ryb25nIGNhc2UgZm9yIHRoZSBy
ZXZlcnNhbCBvZiB0aGUgYnVyZGVuIG9mIHByb29mLg0KDQpJIGRpZCBub3Qgd2FudCB1cyB0byBk
aXNjb3Vyc2UgaW50byBzaWRlIHBoaWxvc29waGljYWwgYXJndW1lbnRzIGFib3V0IA0KaG93IGFu
ZCB3aHkgdGhlIGNvZGUgYmFzZSBnb3QgdG8gd2hlcmUgaXQgaXMuIFRoZSBzdG9yeSBhdCBoYW5k
IGlzIG11Y2ggDQpzaW1wbGVyIGFuZCBuYXJyb3dlciBzbyBleGN1c2UgbWUgZm9yIHNraXBwaW5n
IHRoZSBtYWpvcml0eSBvZiB0aGUgYmVsb3cuDQoNClB1dCBpbiBhIGRpZmZlcmVudCB3b3JkaW5n
LCB3aGF0IEkgd2FzIHRyeWluZyB0byBleHByZXNzIGlzIHRoaXM6IExldHMgDQpub3Qgd3JpdGUg
YSBwb29yIGNvbW1pdCBtZXNzYWdlIGJlY2F1c2UgdGhlIG9yaWdpbmFsIG9uZSB3YXMgcG9vci4g
QWthIA0KdHdvIHdyb25ncyBkbyBub3QgbWFrZSBhIHJpZ2h0Lg0KDQpBbHNvLCBJIGFtIG5vdCBw
dXR0aW5nIGEgYnVyZGVuIG9mIHByb29mIG9uIHlvdSwgaW4gZmFjdCwgSSBvZmZlcmVkIHRvIA0K
dGVzdCB5b3VyIHNlcmllcy4NCg0KQXMgdG8geW91ciBjbG9zaW5nIHF1ZXN0aW9uIHRvIHdoYXQg
SSBzdWdnZXN0IGNvbW1pdCBtZXNzYWdlIG5lZWRzIHRvIA0KYWRkLCB0aGF0IGlzIHNpbXBsZSwg
YW5kIHllcywgdGhlIGZpcnN0IGJ1bGxldCBwb2ludCB5b3UgbGlzdCBpcyB3aGF0IEkgDQpoYXZl
IGFscmVhZHkgYXNrZWQgZm9yIGluIG9uZSBvZiB0aGUgcHJldmlvdXMgcmVwbGllcy4gU28gc2F5
IHNvbWV0aGluZyANCmFsb25nIHRoZSBsaW5lcyBvZjoNCg0KIiIiDQpkcm1fc2NoZWRfZW50aXR5
X2Vycm9yKCksIHdoaWNoIGlzIHNpZ25pZmljYW50bHkgdXNlZCBmcm9tIHZhcmlvdXMgDQpzdGFn
ZXMgb2YgdGhlIGFtZGdwdSBqb2Igc3VibWl0IHBhdGgsIGVpdGhlciBkaXJlY3RseSBvciB2aWEg
DQphbWRncHVfdm1fZ2VuZXJhdGlvbigpLCBpcyBjaGFuZ2VkIGZyb20gbG9ja2xlc3MgdG8gdGFr
aW5nIHRoZSANCmVudGl0eS0+bG9jay4gQXMgcGVyZm9ybWFuY2Ugd2FzIG5vdCBsaXN0ZWQgYXMg
YSByZWFzb24gdGhlIGxvY2tsZXNzIA0KYXBwcm9hY2ggd2FzIGNob3NlbiBpbiB0aGUgYWJvdmUg
cmVmZXJlbmNlZCBjb21taXQsIGFsdGhvdWdoIGl0IGlzIA0Kc3VzcGVjdGVkIHRoYXQgbWlnaHQg
aGF2ZSBiZWVuIHRoZSBtb3RpdmF0aW9uLCBpdCBpcyBub3cgdGhvdWdodCB0aGF0IA0KdGhlIG5l
dyBsb2NrIGN5Y2xlcyB0byB0aG9zZSBwYXRocyB3aWxsIG5vdCBhZGQgYW55IG1lYXN1cmFibGUg
b3ZlcmhlYWQuDQoNCkZvciBvdGhlciBkcml2ZXJzIG5vIG5ldyBsb2NrIGN5Y2xlcyBhcmUgYWRk
ZWQgdG8gdGhlIHN1Ym1pdCBwYXRoLCBnaXZlbiANCmRybV9zY2hlZF9lbnRpdHlfc2VsZWN0X3Jx
KCkgdmlhIHRoZSBqb2IgYXJtIHBhdGggYWxyZWFkeSBiYWlscyBvdXQgDQplYXJseSBkdWUgYWxs
IGRyaXZlcnMgYXBhcnQgZnJvbSBBTUQgb25seSBwYXNzaW5nIGEgc2luZ2xlIHNjaGVkdWxlciAN
Cmxpc3QgdG8gdGhlIGVudGl0eS4NCiIiIg0KDQpCb251cyBwb2ludCBpZiB5b3UgY2FuIHNwZW5k
IHRoZSB0aW1lIHRvIGNvdW50IGhvdyBtYW55IGV4dHJhIA0KbG9jay11bmxvY2sgY3ljbGVzIGl0
IGlzIGFkZGluZyBiZXR3ZWVuIGl0J3MgQ1Mgc3VibWl0LCBwcmVwYXJlIGpvYiBhbmQgDQpydW4g
am9iIGVudHJ5IHBvaW50cy4NCg0KRm9yIG1lLCB0aGF0IGlzIG5vdCB0aGUgYnVyZGVuIG9mIHBy
b29mIGJ1dCBzb21lIG1pbmltdW0gc3RhbmRhcmQgb2YgYSANCmNvbW1pdCBtZXNzYWdlIHdoaWNo
IHNob3dzIHNvbWUgZHVlIGRpbGlnZW5jZSB3YXMgZG9uZS4NCg0KUmVnYXJkcywNCg0KVHZydGtv
DQoNCj4gVGhlIGVudGlyZSBjb2RlIGJhc2Ugb2YgZHJtX3NjaGVkIGhhcyBiZWVuIGRlc2lnbmVk
IG9uIHRoZSBjb21wdXRlcg0KPiBzY2llbmNlIHByZW1pc2Ugb2YgbG9ja3MgYmVpbmcgZXZpbC4g
VGhhdCdzIHdoeSBsaXRlcmFsbHkgYWxsDQo+IHN5bmNocm9uaXphdGlvbiBwcmltaXRpdmVzIGV4
Y2VwdCBmb3IgbG9ja3MgaGF2ZSBiZWVuIHVzZWQgd2hlcmUNCj4gcG9zc2libGUsIGluY2x1ZGlu
ZyB1bmRlZmluZWQgYmVoYXZpb3IuIFRoZSBkZXNpZ25lcnMgdHJpZWQgYXMgaGFyZCBhcw0KPiB0
aGV5IGNvdWxkIHRvIGF2b2lkIGxvY2tzLg0KPiANCj4gVGhhdCBpcyBjbGVhcmx5IHByb3ZlbiBi
eSB0aGUgZmFjdCB0aGF0IGluIGFsbCBvcmlnaW5hbCBkYXRhIHR5cGUNCj4gZGVmaW5pdGlvbnMs
IHRoZSBvbmx5IGNvbXBvbmVudHMgdGhhdCB3ZXJlIGxvY2tlZCB3ZXJlIGFsd2F5cyBsaXN0cywN
Cj4gc2luY2UgdGhvc2UgYXJlIHRoZSBzdHJ1Y3R1cmVzIHdoZXJlIHlvdSByZWFsbHkgY2Fubm90
IGF2b2lkIGEgbG9jayBpbg0KPiBtb3N0IGNhc2VzLg0KPiANCj4gVGhlIGF2ZXJzaW9uIHRvIGxv
Y2tpbmcgd2FzIHNvIGdyZWF0IHRoYXQgdGhleSBkZXNpZ25lZCBzcHNjX3F1ZXVlLA0KPiB3aGlj
aCB1c2VzIGF0IGxlYXN0IGFzIG1hbnkgYXMgZXhwZW5zaXZlIGluc3RydWN0aW9ucyBhcyBhIGxv
Y2sgKyBsaXN0DQo+IHdvdWxkIGhhdmUgbmVlZGVkLCBhbmQgaXRzIGNvcnJlY3RuZXNzIGlzIG5v
dCBwcm92ZW4sIG5vciBhcmUgaXRzDQo+IGJlaGF2aW9yIGFuZCBydWxlcyBuZWl0aGVyIGRvY3Vt
ZW50ZWQgb3IgcHJvdmVuLg0KPiANCj4gSXQncyBub3QgdXAgdG8gdGhlIGZhY3Rpb24gd2hvIHdh
bnRzIHRvIHVzZSBjb3JyZWN0IGxvY2tpbmcgYW5kIHBoYXNlDQo+IG91dCBVQiB0byBwcm92ZSB0
aGF0IHRoZSBsb2NrbGVzc25lc3MgaXMgYmFkLCBidXQgdG8gd2hvbWV2ZXIgYWRkZWQgdGhlDQo+
IGxvY2tsZXNzbmVzcyB0byBwcm92ZSB3aHkgaXQgaXMgZ29vZCwgaS5lLiwgbmVjZXNzYXJ5IOKA
kyB3aGljaCB3YXMgbm90DQo+IGRvbmUgaGVyZSwgbmVpdGhlciBpbiBjb21tZW50cyBub3IgY29t
bWl0IG1lc3NhZ2UuIFNvIHRoZSByZWFzb25hYmxlDQo+IGFzc3VtcHRpb24gaXMgdGhhdCBpdCdz
IHNpbXBseSBhIGxlZnRvdmVyIGZyb20gYSBmbGF3ZWQsIGJyb2tlbiBkZXNpZ24uDQo+IA0KPiBB
bmQgdGhlIGtlcm5lbC13b3JrZmxvdyBpcyB0aGF0IHRoaW5ncyBhcmUgYWx3YXlzIG9uLWxpc3Qg
Zm9yIGEgd2hpbGUNCj4gYmVmb3JlIGJlaW5nIG1lcmdlZCBpcyB0aGF0IHBhcnRpZXMgd2hvIGRv
IGhhdmUgY29uY2VybnMgYW5kIHdobyBjYW4NCj4gcG9pbnQgb3V0IHByb2JsZW1zIGhhdmUgdGlt
ZSB0byBkbyBzby4gV2hpY2ggaXMgb2YgY291cnNlIG9wZW4gdG8geW91Og0KPiBkbyB5b3Ugc2Vl
IGEgcGVyZm9ybWFuY2UtcmVncmVzc2lvbiBwcm9ibGVtIHdpdGggdGhpcyBwYXRjaCwgYW5kIGlm
IHNvLA0KPiB3aGVyZT8NCj4gDQo+IEFueXdheXM6DQo+ICAgKiBDb3JyZWN0IG1lIGlmIEknbSB3
cm9uZywgYnV0IGl0IHdvdWxkIHNlZW0gdGhlIG9ubHkgZHJpdmVyLXVzYWdlDQo+ICAgICB3aGlj
aCBjb3VsZCBzZWUgYSAqbmV3KiBsb2NrIGluIGl0cyBwYXRoIGlzDQo+ICAgICBkcm1fc2NoZWRf
ZW50aXR5X2Vycm9yKCksIGZvciB3aGljaCB5b3UgeW91cnNlbGYgYWdyZWUgdGhhdCBpdCdzDQo+
ICAgICBpcnJlbGV2YW50IHBlcmZvcm1hbmNlLXdpc2UuIFNob3VsZCB3ZSBzdGlsbCBsaXN0IHRo
ZSB1c2VyJ3Mgb2YgdGhhdA0KPiAgICAgZnVuY3Rpb24/DQo+ICAgKiBUaGUgb3RoZXIgcmVsZXZh
bnQgdXNlciBwYXRoLCBkcm1fc2NoZWRfam9iX2FybSgpIHZpYQ0KPiAgICAgZHJtX3NjaGVkX2Vu
dGl0eV9zZWxlY3RfcnEoKSwgbXVzdCBhbHJlYWR5IGJlIGNhbGxlZCB1bmRlciBhIGNvbW1vbg0K
PiAgICAgZHJpdmVyIGxvY2sgZm9yIGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IoKSwgYW5kIF9z
ZWxlY3RfcnEoKQ0KPiAgICAgYWxyZWFkeSB0YWtlcyB0aGUgZW50aXR5IGxvY2suIFNvIGFueSBz
aWduaWZpY2FudCByZWdyZXNzaW9uIGhlcmUgaXMNCj4gICAgIGh5cGVyIHVubGlrZWx5Lg0KPiAg
ICogVGhlIG9ubHkgb3RoZXIgY29udGVuZGVyIGlzIHRoZSBqb2IgcHVsbCBwYXRoLCB3aGljaCBy
dW5zIHNlcmlhbGx5LA0KPiAgICAgYnkgMSB3b3JrIGl0ZW0gYXQgb25lIHBvaW50IGluIHRpbWUu
DQo+ICAgKiBkcm1fc2NoZWRfZW50aXR5X2tpbGwoKSAvIF9maW5pKCkgYXJlIHVzZWQgaW4gdXNl
ciBjb250ZXh0IHRlYXJkb3duDQo+ICAgICBwYXRoLiBQZXJmb3JtYW5jZSBpcnJlbGV2YW50Lg0K
PiANCj4gSSBjYW4gb2ZmZXIgdG8gYWRkIHRoZSBsaXN0IGFib3ZlIGZvciB0aGUganVzdGlmaWNh
dGlvbiBvZiB3aHkgcmVtb3ZpbmcNCj4gdGhlIGhhbGYtdW5kZWZpbmVkIGJlaGF2aW9yIGlzIGdv
b2QuDQo+IA0KPiBPciB3aGF0IGV4YWN0bHkgd291bGQgeW91IHdhbnQgdG8gc2VlIGRvY3VtZW50
ZWQ/ICJhbWRncHUgdXNlcw0KPiBkcm1fc2NoZWRfam9iX2FybSgpIGFuZCBub3cgc2VlcyBhIGxv
Y2stY3JpdGljYWwgc2VjdGlvbiBsb25nZXIgYnkgMw0KPiBpbnN0cnVjdGlvbnMuIGV0bmF2aXYg
dXNlcyBkcm1fc2NoZWRfam9iX2FybSgpIGFuZCBub3figKYiPw0KPiANCj4gDQo+IA0KPiANCj4g
UC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
