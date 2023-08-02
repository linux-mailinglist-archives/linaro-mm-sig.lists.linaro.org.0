Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E0276C9C9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 11:47:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1B2E43D6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 09:47:35 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 81AC13E9FC
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Aug 2023 09:47:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=none (lists.linaro.org: domain of hch@lst.de has no SPF policy when checking 213.95.11.211) smtp.mailfrom=hch@lst.de;
	dmarc=none
Received: by verein.lst.de (Postfix, from userid 2407)
	id 2B29368AFE; Wed,  2 Aug 2023 11:47:26 +0200 (CEST)
Date: Wed, 2 Aug 2023 11:47:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: John Stultz <jstultz@google.com>
Message-ID: <20230802094725.GA28241@lst.de>
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com> <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com> <20230801171838.GA14599@lst.de> <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 81AC13E9FC
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_SPAM(0.00)[0.972];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[lst.de,gmail.com,quicinc.com,vger.kernel.org,linux-foundation.org,kvack.org,samsung.com,arm.com,lists.linux.dev,linaro.org,collabora.com,codeaurora.org,redhat.com,amd.com,lists.freedesktop.org,lists.linaro.org];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[lst.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: JWRML4RRB33U24GP5E5MEUTGNQVZIW7L
X-Message-ID-Hash: JWRML4RRB33U24GP5E5MEUTGNQVZIW7L
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Pintu Agarwal <pintu.ping@gmail.com>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JWRML4RRB33U24GP5E5MEUTGNQVZIW7L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMDEsIDIwMjMgYXQgMTA6Mzk6MDRQTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6DQo+IFNvLCBmb3JnaXZlIG1lLCBJJ3ZlIG5vdCBoYWQgYSBjaGFuY2UgdG8gbG9vayBpbnRv
IHRoaXMsIGJ1dCBteQ0KPiByZWNvbGxlY3Rpb24gd2FzICJyZXNlcnZlZCIgaXMgdGhlIG5hbWUg
d2Ugc2VlIG9uIHg4NiwgYnV0IG90aGVyIG5hbWVzDQo+IGFyZSBwb3NzaWJseSBwcm92aWRlZCB2
aWEgdGhlIGR0cyBub2RlPw0KDQpJbmRlZWQsIGRtYV9jb250aWd1b3VzX2RlZmF1bHRfYXJlYSBj
YW4gYWxzbyBiZSBzZXQgdGhyb3VnaA0Kcm1lbV9jbWFfc2V0dXAsIHdoaWNoIHRoZW4gdGFrZXMg
dGhlIG5hbWUgZnJvbSBEVC4NCg0KPiBJIGJlbGlldmUgb24gdGhlIGhpa2V5IGJvYXJkIGl0cyAi
bGludXgsY21hIiBpcyB0aGUgbmFtZSwgc28gZm9yY2luZw0KPiBpdCB0byByZXNlcnZlZCB3b3Vs
ZCBicmVhayB0aGF0Lg0KPiANCj4gTWF5YmUgaW5zdGVhZCBhZGQgYSBjb21wYXQgY29uZmlnIG9w
dGlvbiB0byBmb3JjZSB0aGUgY21hIG5hbWUgKHNvIHg4Ng0KPiBjYW4gc2V0IGl0IHRvICJkZWZh
dWx0IiBpZiBuZWVkZWQpPw0KDQoNCkkgdGhpbmsgd2UnbGwganVzdCBuZWVkIHRvIGxlYXZlIGl0
IGFzLWlzLiAgSSB3aXRoIGRtYS1oZWFwcyBoYWQgbmV2ZXINCmV4cG9zZWQgdGhlIG5hbWUgdG8g
dXNlcnNwYWNlLCBidXQgd2UnbGwgaGF2ZSB0byBs0ZZ2ZSB3aXRoIGl0IG5vdy4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
