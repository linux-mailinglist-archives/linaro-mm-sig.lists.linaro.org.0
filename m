Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EC910A09E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 15:45:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C851060C0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 14:45:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B646C61504; Tue, 26 Nov 2019 14:45:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B75F61503;
	Tue, 26 Nov 2019 14:44:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB82761504
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:44:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA3A661627; Tue, 26 Nov 2019 14:44:43 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by lists.linaro.org (Postfix) with ESMTPS id 6430E61887
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:44:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="260713664"
Received: from rosenbaf-mobl1.ger.corp.intel.com (HELO [10.252.49.190])
 ([10.252.49.190])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2019 06:44:27 -0800
To: Daniel Vetter <daniel@ffwll.ch>
References: <20191126142516.630200-1-maarten.lankhorst@linux.intel.com>
 <20191126143633.GX29965@phenom.ffwll.local>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1ea4c2e0-38f6-6dfa-0fc1-5c6b6be9ed98@linux.intel.com>
Date: Tue, 26 Nov 2019 15:44:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126143633.GX29965@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] udmabuf: Remove deleted map/unmap
	handlers.
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3AgMjYtMTEtMjAxOSBvbSAxNTozNiBzY2hyZWVmIERhbmllbCBWZXR0ZXI6Cj4gT24gVHVlLCBO
b3YgMjYsIDIwMTkgYXQgMDM6MjU6MTZQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6
Cj4+IENvbW1pdCA3ZjBkZThkODA4MTYgKCJkbWEtYnVmOiBEcm9wIGRtYV9idWZfayh1biltYXAi
KSByZW1vdmVkIG1hcC91bm1hcAo+PiBoYW5kbGVycywgYnV0IHRoZXkgc3RpbGwgZXhpc3RlZCBp
biB1ZG1hYnVmLiBSZW1vdmUgdGhlbSB0aGVyZSBhcyB3ZWxsCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+
IEZpeGVzOiA3ZjBkZThkODA4MTYgKCJkbWEtYnVmOiBEcm9wIGRtYV9idWZfayh1biltYXAiKQo+
PiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPj4gQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+PiBDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnCj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPj4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiAvbWUgcHV0cyBvbiBicm93biBwYXBl
ciBiYWcKPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgpUaGFua3MsIHB1c2hlZC4gOikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
