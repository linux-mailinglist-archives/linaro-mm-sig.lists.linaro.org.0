Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLG7K9EB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 544E4410F6C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 168614463B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:44 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0368C3F72F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 10:36:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ttqxnQUl;
	spf=pass (lists.linaro.org: domain of david@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=david@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5CB7243952;
	Mon,  1 Dec 2025 10:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0535CC4CEF1;
	Mon,  1 Dec 2025 10:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764585399;
	bh=i/3/Rip96GcKSnLsnoJCi2BaWt5AlEQD9LD5Gy2yr64=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ttqxnQUlMyZ735APhYyyPQlNfKCxrJ7vr/YSfKPCFR/vDFgL5eOPDW09v0LT0lpDU
	 ivEril84GprJ+EjxGUybk0u36RrkTSTOptCgRjdaVWZr9v6m4kzG/4rxC7D8gIjlLg
	 x9L89WwPTIOM0SklBRUx3nfizT1F98V85iPW0HzxOWSuSouOGJXt8bSSuie3N6CKQX
	 v0aWu63LNuFVFVOuT6a7PFDevwj8J4ygb9f+9ABPHjimzoxqrBD4txoLI9eR6nynSH
	 LZPhMTEMQ3aGx4iBMHTVXXD89hmehrEftHm/iHMnsfKYW8uDA0XD02v5GozAldSMPq
	 yvKsa4tXDLWbw==
Message-ID: <ed7701d7-28c8-4760-9ccb-f22fc1e9528e@kernel.org>
Date: Mon, 1 Dec 2025 11:36:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Barry Song <21cnbao@gmail.com>, akpm@linux-foundation.org,
 linux-mm@kvack.org
References: <20251122090343.81243-1-21cnbao@gmail.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <20251122090343.81243-1-21cnbao@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: david@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EAAUWXLSK6GYLMHWXOPQ4GE5FWO33OS4
X-Message-ID-Hash: EAAUWXLSK6GYLMHWXOPQ4GE5FWO33OS4
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:29 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAAUWXLSK6GYLMHWXOPQ4GE5FWO33OS4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3268];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux-foundation.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,gmail.com,linaro.org,google.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_NEQ_ENVFROM(0.00)[david@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oppo.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 544E4410F6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTEvMjIvMjUgMTA6MDMsIEJhcnJ5IFNvbmcgd3JvdGU6DQo+IEZyb206IEJhcnJ5IFNvbmcg
PHYtc29uZ2Jhb2h1YUBvcHBvLmNvbT4NCj4gDQo+IEluIG1hbnkgY2FzZXMsIHRoZSBwYWdlcyBw
YXNzZWQgdG8gdm1hcCgpIG1heSBpbmNsdWRlDQo+IGhpZ2gtb3JkZXIgcGFnZXPigJRmb3IgZXhh
bXBsZSwgdGhlIHN5c3RlbWhlYXAgb2Z0ZW4gYWxsb2NhdGVzDQo+IHBhZ2VzIGluIGRlc2NlbmRp
bmcgb3JkZXI6IG9yZGVyIDgsIHRoZW4gNCwgdGhlbiAwLiBDdXJyZW50bHksDQo+IHZtYXAoKSBp
dGVyYXRlcyBvdmVyIGV2ZXJ5IHBhZ2UgaW5kaXZpZHVhbGx54oCUZXZlbiB0aGUgcGFnZXMNCj4g
aW5zaWRlIGEgaGlnaC1vcmRlciBibG9jayBhcmUgaGFuZGxlZCBvbmUgYnkgb25lLiBUaGlzIHBh
dGNoDQo+IGRldGVjdHMgaGlnaC1vcmRlciBwYWdlcyBhbmQgbWFwcyB0aGVtIGFzIGEgc2luZ2xl
IGNvbnRpZ3VvdXMNCj4gYmxvY2sgd2hlbmV2ZXIgcG9zc2libGUuDQo+IA0KPiBBbm90aGVyIHBv
c3NpYmlsaXR5IGlzIHRvIGltcGxlbWVudCBhIG5ldyBBUEksIHZtYXBfc2coKS4NCj4gSG93ZXZl
ciwgdGhhdCBjaGFuZ2Ugc2VlbXMgdG8gYmUgcXVpdGUgbGFyZ2UgaW4gc2NvcGUuDQo+IA0KPiBX
aGVuIHZtYXBwaW5nIGEgMTI4TUIgZG1hLWJ1ZiB1c2luZyB0aGUgc3lzdGVtaGVhcCwNCj4gdGhp
cyBSRkMgYXBwZWFycyB0byBtYWtlIHN5c3RlbV9oZWFwX2RvX3ZtYXAoKSAxNsOXIGZhc3RlcjoN
Cj4gDQo+IFcvIHBhdGNoOg0KPiBbICAgNTEuMzYzNjgyXSBzeXN0ZW1faGVhcF9kb192bWFwIHRv
b2sgMjQ3NDAwMCBucw0KPiBbICAgNTMuMzA3MDQ0XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sg
MjQ2OTAwOCBucw0KPiBbICAgNTUuMDYxOTg1XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjUx
OTAwOCBucw0KPiBbICAgNTYuNjUzODEwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjY3NDAw
MCBucw0KPiANCj4gVy9vIHBhdGNoOg0KPiBbICAgIDguMjYwODgwXSBzeXN0ZW1faGVhcF9kb192
bWFwIHRvb2sgMzk0OTAwMDAgbnMNCj4gWyAgIDMyLjUxMzI5Ml0gc3lzdGVtX2hlYXBfZG9fdm1h
cCB0b29rIDM4Nzg0MDAwIG5zDQo+IFsgICA4Mi42NzMzNzRdIHN5c3RlbV9oZWFwX2RvX3ZtYXAg
dG9vayA0MDcxMTAwOCBucw0KPiBbICAgODQuNTc5MDYyXSBzeXN0ZW1faGVhcF9kb192bWFwIHRv
b2sgNDAyMzYwMDAgbnMNCj4gDQo+IENjOiBVbGFkemlzbGF1IFJlemtpIDx1cmV6a2lAZ21haWwu
Y29tPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6
IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQo+IENjOiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IEJhcnJ5IFNvbmcgPHYtc29uZ2Jh
b2h1YUBvcHBvLmNvbT4NCj4gLS0tDQo+ICAgbW0vdm1hbGxvYy5jIHwgNDkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA0MyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21t
L3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0KPiBpbmRleCAwODMyZjk0NDU0NGMuLmFmMmUzZThj
MDUyYSAxMDA2NDQNCj4gLS0tIGEvbW0vdm1hbGxvYy5jDQo+ICsrKyBiL21tL3ZtYWxsb2MuYw0K
PiBAQCAtNjQyLDYgKzY0MiwzNCBAQCBzdGF0aWMgaW50IHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vf
bm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLA0KPiAgIAlyZXR1
cm4gZXJyOw0KPiAgIH0NCj4gICANCj4gK3N0YXRpYyBpbmxpbmUgaW50IGdldF92bWFwX2JhdGNo
X29yZGVyKHN0cnVjdCBwYWdlICoqcGFnZXMsDQo+ICsJCXVuc2lnbmVkIGludCBzdHJpZGUsDQo+
ICsJCWludCBtYXhfc3RlcHMsDQo+ICsJCXVuc2lnbmVkIGludCBpZHgpDQoNClRoZXNlIGZpdCBp
bnRvIGxlc3MgbGluZXMuDQoNCmlkZWFsbHkNCg0KXHRcdHVuc2lnbmVkIGludCBzdHJpZGUsIGlu
dCBtYXhfc3RlcHMsIHVuc2lnbmVkIGludCBpZHgpDQoNCj4gK3sNCg0KaW50IG9yZGVyLCBucl9w
YWdlcywgaTsNCnN0cnVjdCBwYWdlICpiYXNlOw0KDQpCdXQgSSB0aGluayB5b3UgY2FuIGp1c3Qg
ZHJvcCAiYmFzZSIuIEFuZCBvcmRlci4NCg0KPiArCS8qDQo+ICsJICogQ3VycmVudGx5LCBiYXRj
aGluZyBpcyBvbmx5IHN1cHBvcnRlZCBpbiB2bWFwX3BhZ2VzX3JhbmdlDQo+ICsJICogd2hlbiBw
YWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQuDQo+ICsJICovDQo+ICsJaWYgKHN0cmlkZSAhPSAxKQ0K
PiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCXN0cnVjdCBwYWdlICpiYXNlID0gcGFnZXNbaWR4XTsN
Cj4gKwlpZiAoIVBhZ2VIZWFkKGJhc2UpKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCWludCBv
cmRlciA9IGNvbXBvdW5kX29yZGVyKGJhc2UpOw0KPiArCWludCBucl9wYWdlcyA9IDEgPDwgb3Jk
ZXI7DQoNCg0KWW91IGNhbiBkcm9wIHRoZSBoZWFkIGNoZWNrIGV0YyBhbmQgc2ltcGx5IGRvDQoN
Cm5yX3BhZ2VzID0gY29tcG91bmRfbnIocGFnZXNbaWR4XSk7DQppZiAobnJfcGFnZXMgPT0gMSkN
CglyZXR1cm4gMDsNCg0KV2hpY2ggcmFpc2VzIHRoZSBxdWVzdGlvbjogYXJlIHRoZXNlIHRoaW5n
cyBmb2xpb3M/IEkgYXNzdW1lIG5vdC4NCg0KPiArDQo+ICsJaWYgKG1heF9zdGVwcyA8IG5yX3Bh
Z2VzKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCWZvciAoaW50IGkgPSAwOyBpIDwgbnJfcGFn
ZXM7IGkrKykNCj4gKwkJaWYgKHBhZ2VzW2lkeCArIGldICE9IGJhc2UgKyBpKQ0KPiArCQkJcmV0
dXJuIDA7DQoNCmlmIChudW1fcGFnZXNfY29udGlndW91cygmcGFnZXNbaWR4XSwgbnJfcGFnZXMp
ID09IG5yX3BhZ2VzKQ0KCXJldHVybiBjb21wb3VuZF9vcmRlcihwYWdlc1tpZHhdKTsNCnJldHVy
biAwOw0KDQotLSANCkNoZWVycw0KDQpEYXZpZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
