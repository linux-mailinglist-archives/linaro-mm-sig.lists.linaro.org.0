Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFJIGR334GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A05840FCE2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24F5E404F4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:50:04 +0000 (UTC)
Received: from out30-101.freemail.mail.aliyun.com (out30-101.freemail.mail.aliyun.com [115.124.30.101])
	by lists.linaro.org (Postfix) with ESMTPS id 3337D3F751
	for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Oct 2025 07:55:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.alibaba.com header.s=default header.b=uWaRGsje;
	dmarc=pass (policy=none) header.from=linux.alibaba.com;
	spf=pass (lists.linaro.org: domain of xueshuai@linux.alibaba.com designates 115.124.30.101 as permitted sender) smtp.mailfrom=xueshuai@linux.alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1761465309; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=gbW6lsAeQnITBSvhA7va7FPK1N1OCTuc7ZM09ubMnwE=;
	b=uWaRGsjebUdzH2whT3j5S+i/fAtGVXCjOMCOlz2NN3eCmuwsKvKJ40zCwftesgr2ikX/2jJnolz39m3RxVGZCz/jOPjf+dta4Qwm3qAmMA4GHwxKAszjPDoY8iI7uigsFF+c+Y/Aj8i7+ZwfHMbYs7JTxyE/MhMmYFagpMgQM9w=
Received: from 30.246.176.102(mailfrom:xueshuai@linux.alibaba.com fp:SMTPD_---0Wqyle5w_1761465304 cluster:ay36)
          by smtp.aliyun-inc.com;
          Sun, 26 Oct 2025 15:55:06 +0800
Message-ID: <3db524e7-b6ce-4652-8420-fdb4639ac73a@linux.alibaba.com>
Date: Sun, 26 Oct 2025 15:55:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leon@kernel.org>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251022125012.GB244727@nvidia.com>
From: Shuai Xue <xueshuai@linux.alibaba.com>
In-Reply-To: <20251022125012.GB244727@nvidia.com>
X-Spamd-Bar: -------------
X-MailFrom: xueshuai@linux.alibaba.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6YGDXZ67WLZDES7P4ANYNPBEMCLYUHMO
X-Message-ID-Hash: 6YGDXZ67WLZDES7P4ANYNPBEMCLYUHMO
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:21 +0000
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6YGDXZ67WLZDES7P4ANYNPBEMCLYUHMO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[linux.alibaba.com:s=default];
	DATE_IN_PAST(1.00)[4134];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.alibaba.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.alibaba.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xueshuai@linux.alibaba.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email,linux.alibaba.com:mid]
X-Rspamd-Queue-Id: 1A05840FCE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCuWcqCAyMDI1LzEwLzIyIDIwOjUwLCBKYXNvbiBHdW50aG9ycGUg5YaZ6YGTOg0KPiBPbiBN
b24sIE9jdCAxMywgMjAyNSBhdCAwNjoyNjoxMVBNICswMzAwLCBMZW9uIFJvbWFub3Zza3kgd3Jv
dGU6DQo+PiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPj4NCj4+
IEFkZCBzdXBwb3J0IGZvciBleHBvcnRpbmcgUENJIGRldmljZSBNTUlPIHJlZ2lvbnMgdGhyb3Vn
aCBkbWEtYnVmLA0KPj4gZW5hYmxpbmcgc2FmZSBzaGFyaW5nIG9mIG5vbi1zdHJ1Y3QgcGFnZSBt
ZW1vcnkgd2l0aCBjb250cm9sbGVkDQo+PiBsaWZldGltZSBtYW5hZ2VtZW50LiBUaGlzIGFsbG93
cyBSRE1BIGFuZCBvdGhlciBzdWJzeXN0ZW1zIHRvIGltcG9ydA0KPj4gZG1hLWJ1ZiBGRHMgYW5k
IGJ1aWxkIHRoZW0gaW50byBtZW1vcnkgcmVnaW9ucyBmb3IgUENJIFAyUCBvcGVyYXRpb25zLg0K
Pj4NCj4+IFRoZSBpbXBsZW1lbnRhdGlvbiBwcm92aWRlcyBhIHJldm9jYWJsZSBhdHRhY2htZW50
IG1lY2hhbmlzbSB1c2luZw0KPj4gZG1hLWJ1ZiBtb3ZlIG9wZXJhdGlvbnMuIE1NSU8gcmVnaW9u
cyBhcmUgbm9ybWFsbHkgcGlubmVkIGFzIEJBUnMNCj4+IGRvbid0IGNoYW5nZSBwaHlzaWNhbCBh
ZGRyZXNzZXMsIGJ1dCBhY2Nlc3MgaXMgcmV2b2tlZCB3aGVuIHRoZSBWRklPDQo+PiBkZXZpY2Ug
aXMgY2xvc2VkIG9yIGEgUENJIHJlc2V0IGlzIGlzc3VlZC4gVGhpcyBlbnN1cmVzIGtlcm5lbA0K
Pj4gc2VsZi1kZWZlbnNlIGFnYWluc3QgcG90ZW50aWFsbHkgaG9zdGlsZSB1c2Vyc3BhY2UuDQo+
IA0KPiBMZXQncyBlbmhhbmNlIHRoaXM6DQo+IA0KPiBDdXJyZW50bHkgVkZJTyBjYW4gdGFrZSBN
TUlPIHJlZ2lvbnMgZnJvbSB0aGUgZGV2aWNlJ3MgQkFSIGFuZCBtYXANCj4gdGhlbSBpbnRvIGEg
UEZOTUFQIFZNQSB3aXRoIHNwZWNpYWwgUFRFcy4gVGhpcyBtYXBwaW5nIHR5cGUgZW5zdXJlcw0K
PiB0aGUgbWVtb3J5IGNhbm5vdCBiZSB1c2VkIHdpdGggdGhpbmdzIGxpa2UgcGluX3VzZXJfcGFn
ZXMoKSwgaG1tLCBhbmQNCj4gc28gb24uIEluIHByYWN0aWNlIG9ubHkgdGhlIHVzZXIgcHJvY2Vz
cyBDUFUgYW5kIEtWTSBjYW4gc2FmZWx5IG1ha2UNCj4gdXNlIG9mIHRoZXNlIFZNQS4gV2hlbiBW
RklPIHNodXRzIGRvd24gdGhlc2UgVk1BcyBhcmUgY2xlYW5lZCBieQ0KPiB1bm1hcF9tYXBwaW5n
X3JhbmdlKCkgdG8gcHJldmVudCBhbnkgVUFGIG9mIHRoZSBNTUlPIGJleW9uZCBkcml2ZXINCj4g
dW5iaW5kLg0KPiANCj4gSG93ZXZlciwgVkZJTyB0eXBlIDEgaGFzIGFuIGluc2VjdXJlIGJlaGF2
aW9yIHdoZXJlIGl0IHVzZXMNCj4gZm9sbG93X3Bmbm1hcF8qKCkgdG8gZmlzaCBhIE1NSU8gUEZO
IG91dCBvZiBhIFZNQSBhbmQgcHJvZ3JhbSBpdCBiYWNrDQo+IGludG8gdGhlIElPTU1VLiBUaGlz
IGhhcyBhIGxvbmcgaGlzdG9yeSBvZiBlbmFibGluZyBQMlAgRE1BIGluc2lkZQ0KPiBWTXMsIGJ1
dCBoYXMgc2VyaW91cyBsaWZldGltZSBwcm9ibGVtcyBieSBhbGxvd2luZyBhIFVBRiBvZiB0aGUg
TU1JTw0KPiBhZnRlciB0aGUgVkZJTyBkcml2ZXIgaGFzIGJlZW4gdW5ib3VuZC4NCg0KSGksIEph
c29uLA0KDQpDYW4geW91IGVsYWJvcmF0ZSBvbiB0aGlzIG1vcmU/DQoNCiBGcm9tIG15IHVuZGVy
c3RhbmRpbmcgb2YgdGhlIFZGSU8gdHlwZSAxIGltcGxlbWVudGF0aW9uOg0KDQotIFdoZW4gYSBk
ZXZpY2UgaXMgb3BlbmVkIHRocm91Z2ggVkZJTyB0eXBlIDEsIGl0IGluY3JlbWVudHMgdGhlDQog
ICBkZXZpY2UtPnJlZmNvdW50DQotIER1cmluZyB1bmJpbmQsIHRoZSBkcml2ZXIgd2FpdHMgZm9y
IHRoaXMgcmVmY291bnQgdG8gZHJvcCB0byB6ZXJvIHZpYQ0KICAgd2FpdF9mb3JfY29tcGxldGlv
bigmZGV2aWNlLT5jb21wKQ0KLSBUaGlzIHNob3VsZCBwcmV2ZW50IHRoZSB1bmJpbmQoKSBmcm9t
IGNvbXBsZXRpbmcgd2hpbGUgdGhlIGRldmljZSBpcw0KICAgc3RpbGwgaW4gdXNlDQoNCkdpdmVu
IHRoaXMgcmVmY291bnQgbWVjaGFuaXNtLCBJIGRvIG5vdCBmaWd1cmUgb3V0IGhvdyB0aGUgVUFG
IGNhbg0Kb2NjdXIuDQoNClRoYW5rcy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
