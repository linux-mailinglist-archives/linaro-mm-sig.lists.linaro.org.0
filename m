Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5017442F182
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 14:52:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9966062072
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 12:52:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F312962079; Fri, 15 Oct 2021 12:52:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAA5061945;
	Fri, 15 Oct 2021 12:52:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3BA85617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 12:52:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2F47D61945; Fri, 15 Oct 2021 12:52:42 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by lists.linaro.org (Postfix) with ESMTPS id D8D77617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 12:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228188484"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="228188484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 05:52:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="492547111"
Received: from gbocksch-mobl.ger.corp.intel.com (HELO [10.252.63.132])
 ([10.252.63.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 05:52:36 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
 <20211015115720.79958-3-maarten.lankhorst@linux.intel.com>
 <ebf0714c-2f49-a0ad-1861-16394ade468d@amd.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9b7e43bb-e175-0aff-2cc1-cc10236fe8e5@linux.intel.com>
Date: Fri, 15 Oct 2021 14:52:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ebf0714c-2f49-a0ad-1861-16394ade468d@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dma-buf: Fix dma_resv_test_signaled.
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3AgMTUtMTAtMjAyMSBvbSAxNDowNyBzY2hyZWVmIENocmlzdGlhbiBLw7ZuaWc6Cj4gQW0gMTUu
MTAuMjEgdW0gMTM6NTcgc2NocmllYiBNYWFydGVuIExhbmtob3JzdDoKPj4gQ29tbWl0IDdmYTgy
OGNiOTI2NSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gZG1hX3Jlc3ZfdGVzdF9zaWdu
YWxlZCIpCj4+IGFjY2lkZW50YWxseSBmb3Jnb3QgdG8gdGVzdCB3aGV0aGVyIHRoZSBkbWEtYnVm
IGlzIGFjdHVhbGx5IHNpZ25hbGVkLCBicmVha2luZwo+PiBwcmV0dHkgbXVjaCBldmVyeXRoaW5n
IGRlcGVuZGluZyBvbiBpdC4KPgo+IE5BSywgdGhlIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3Vu
bG9ja2VkKCkgcmV0dXJucyBvbmx5IHVuc2lnbmFsZWQgZmVuY2VzLiBTbyB0aGUgY29kZSBpcyBj
b3JyZWN0IGFzIGl0IGlzLiAKClRoYXQgc2VlbXMgbGlrZSBpdCBtaWdodCBjYXVzZSBzb21lIHVu
ZXhwZWN0ZWQgYmVoYXZpb3Igd2hlbiB0aGF0IGZ1bmN0aW9uIGlzIGNhbGxlZCB3aXRoIG9uZSBv
ZiB0aGUgZmVuY2UgbG9ja3MgaGVsZCwgaWYgaXQgY2FsbHMgZG1hX2ZlbmNlX3NpZ25hbCgpLgoK
Q291bGQgaXQgYmUgY2hhbmdlZCB0byBvbmx5IHRlc3QgdGhlIHNpZ25hbGVkIGJpdCwgaW4gd2hp
Y2ggY2FzZSB0aGlzIHBhdGNoIHdvdWxkIHN0aWxsIGJlIHVzZWZ1bD8KCk9yIGF0IGxlYXN0IGFk
ZCBzb21lIGxvY2tkZXAgYW5ub3RhdGlvbnMsIHRoYXQgZmVuY2UtPmxvY2sgbWlnaHQgYmUgdGFr
ZW4uIFNvIGFueSBoYW5ncyB3b3VsZCBhdCBsZWFzdCBiZSBlYXN5IHRvIHNwb3Qgd2l0aCBsb2Nr
ZGVwLgoKfk1hYXJ0ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
