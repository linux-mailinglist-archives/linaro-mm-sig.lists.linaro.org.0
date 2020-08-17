Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8020246CB0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 18:25:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0BD260665
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 16:25:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D44FF614E1; Mon, 17 Aug 2020 16:25:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14023617B9;
	Mon, 17 Aug 2020 16:24:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5E1660665
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 16:24:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D7CE4617B9; Mon, 17 Aug 2020 16:24:56 +0000 (UTC)
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by lists.linaro.org (Postfix) with ESMTPS id 6DB5260665
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 16:24:55 +0000 (UTC)
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5f3aaf57247ccc308cf5f665 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 17 Aug 2020 16:24:55
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 29537C433CA; Mon, 17 Aug 2020 16:24:54 +0000 (UTC)
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 07EEEC433C6;
 Mon, 17 Aug 2020 16:24:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 07EEEC433C6
Date: Mon, 17 Aug 2020 10:24:49 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200817162449.GC3221@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 linux-arm-msm@vger.kernel.org,
 Gustavo Padovan <gustavo@padovan.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
References: <20200812235544.2289895-1-jcrouse@codeaurora.org>
 <159730136458.14054.18114194663048046416@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159730136458.14054.18114194663048046416@build.alporthouse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Gustavo Padovan <gustavo@padovan.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC PATCH v1] dma-fence-array: Deal with
 sub-fences that are signaled late
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

T24gVGh1LCBBdWcgMTMsIDIwMjAgYXQgMDc6NDk6MjRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgSm9yZGFuIENyb3VzZSAoMjAyMC0wOC0xMyAwMDo1NTo0NCkKPiA+IFRo
aXMgaXMgYW4gUkZDIGJlY2F1c2UgSSdtIHN0aWxsIHRyeWluZyB0byBncm9rIHRoZSBjb3JyZWN0
IGJlaGF2aW9yLgo+ID4gCj4gPiBDb25zaWRlciBhIGRtYV9mZW5jZV9hcnJheSBjcmVhdGVkIHR3
byB0d28gZmVuY2UgYW5kIHNpZ25hbF9vbl9hbnkgaXMgdHJ1ZS4KPiA+IEEgcmVmZXJlbmNlIHRv
IGRtYV9mZW5jZV9hcnJheSBpcyB0YWtlbiBmb3IgZWFjaCB3YWl0aW5nIGZlbmNlLgo+ID4gCj4g
PiBXaGVuIHRoZSBjbGllbnQgY2FsbHMgZG1hX2ZlbmNlX3dhaXQoKSBvbmx5IG9uZSBvZiB0aGUg
ZmVuY2VzIGlzIHNpZ25hbGVkLgo+ID4gVGhlIGNsaWVudCByZXR1cm5zIHN1Y2Nlc3NmdWxseSBm
cm9tIHRoZSB3YWl0IGFuZCBwdXRzIGl0J3MgcmVmZXJlbmNlIHRvCj4gPiB0aGUgYXJyYXkgZmVu
Y2UgYnV0IHRoZSBhcnJheSBmZW5jZSBzdGlsbCByZW1haW5zIGJlY2F1c2Ugb2YgdGhlIHJlbWFp
bmluZwo+ID4gdW4tc2lnbmFsZWQgZmVuY2UuCj4gPiAKPiA+IE5vdyBjb25zaWRlciB0aGF0IHRo
ZSB1bnNpZ25hbGVkIGZlbmNlIGlzIHNpZ25hbGVkIHdoaWxlIHRoZSB0aW1lbGluZSBpcyBiZWlu
Zwo+ID4gZGVzdHJveWVkIG11Y2ggbGF0ZXIuIFRoZSB0aW1lbGluZSBkZXN0cm95IGNhbGxzIGRt
YV9mZW5jZV9zaWduYWxfbG9ja2VkKCkuIFRoZQo+ID4gZm9sbG93aW5nIHNlcXVlbmNlIG9jY3Vy
czoKPiA+IAo+ID4gMSkgZG1hX2ZlbmNlX2FycmF5X2NiX2Z1bmMgaXMgY2FsbGVkCj4gPiAKPiA+
IDIpIGFycmF5LT5udW1fcGVuZGluZyBpcyAwIChiZWNhdXNlIGl0IHdhcyBzZXQgdG8gMSBkdWUg
dG8gc2lnbmFsX29uX2FueSkgc28gdGhlCj4gPiBjYWxsYmFjayBmdW5jdGlvbiBjYWxscyBkbWFf
ZmVuY2VfcHV0KCkgaW5zdGVhZCBvZiB0cmlnZ2VyaW5nIHRoZSBpcnEgd29yawo+ID4gCj4gPiAz
KSBUaGUgYXJyYXkgZmVuY2UgaXMgcmVsZWFzZWQgd2hpY2ggaW4gdHVybiBwdXRzIHRoZSBsaW5n
ZXJpbmcgZmVuY2Ugd2hpY2ggaXMKPiA+IHRoZW4gcmVsZWFzZWQKPiA+IAo+ID4gNCkgZGVhZGxv
Y2sgd2l0aCB0aGUgdGltZWxpbmUKPiAKPiBJdCdzIHRoZSBzYW1lIHJlY3Vyc2l2ZSBsb2NrIGFz
IHdlIHByZXZpb3VzbHkgcmVzb2x2ZWQgaW4gc3dfc3luYy5jIGJ5Cj4gcmVtb3ZpbmcgdGhlIGxv
Y2tpbmcgZnJvbSB0aW1lbGluZV9mZW5jZV9yZWxlYXNlKCkuCgpBaCwgeWVwLiBJJ20gd29ya2lu
ZyBvbiBhIG5vdC1xdWl0ZS1yZWFkeS1mb3ItcHJpbWV0aW1lIHZlcnNpb24gb2YgYSB2dWxrYW4K
dGltZWxpbmUgaW1wbGVtZW50YXRpb24gZm9yIGRybS9tc20gYW5kIEkgd2FzIGRvaW5nIHNvbWV0
aGluZyBzaW1pbGFyIHRvIGhvdwpzd19zeW5jIHVzZWQgdG8gd29yayBpbiB0aGUgcmVsZWFzZSBm
dW5jdGlvbi4gR2V0dGluZyByaWQgb2YgdGhlIHJlY3Vyc2l2ZSBsb2NrCmluIHRoZSB0aW1lbGlu
ZSBzZWVtcyBhIGJldHRlciBzb2x1dGlvbiB0aGFuIHRoaXMuIFRoYW5rcyBmb3IgdGFraW5nIHRo
ZSB0aW1lCnRvIHJlc3BvbmQuCgpKb3JkYW4KCj4gLUNocmlzCgotLSAKVGhlIFF1YWxjb21tIElu
bm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgbWVtYmVyIG9mIENvZGUgQXVyb3JhIEZvcnVtLAph
IExpbnV4IEZvdW5kYXRpb24gQ29sbGFib3JhdGl2ZSBQcm9qZWN0Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
