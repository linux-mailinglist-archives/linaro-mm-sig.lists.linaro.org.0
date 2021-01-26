Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D2A30372E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 08:11:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2732B61885
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 07:11:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19F59617D4; Tue, 26 Jan 2021 07:11:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 252B1617EE;
	Tue, 26 Jan 2021 07:11:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7372761504
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:11:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 545C2617EE; Tue, 26 Jan 2021 07:11:04 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 8008E61504
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:11:02 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l4IS0-005E6W-9K; Tue, 26 Jan 2021 07:08:08 +0000
Date: Tue, 26 Jan 2021 07:07:44 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20210126070744.GA1244507@infradead.org>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-5-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210121175502.274391-5-minchan@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

PiArY29uZmlnIERNQUJVRl9IRUFQU19DSFVOSwo+ICsJYm9vbCAiRE1BLUJVRiBDSFVOSyBIZWFw
Igo+ICsJZGVwZW5kcyBvbiBETUFCVUZfSEVBUFMgJiYgRE1BX0NNQQo+ICsJaGVscAo+ICsJICBD
aG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIGRtYS1idWYgQ0hVTksgaGVhcC4gVGhpcyBoZWFw
IGlzIGJhY2tlZAo+ICsJICBieSB0aGUgQ29udGlndW91cyBNZW1vcnkgQWxsb2NhdG9yIChDTUEp
IGFuZCBhbGxvY2F0ZXMgdGhlIGJ1ZmZlcnMgdGhhdAo+ICsJICBhcmUgYXJyYW5nZWQgaW50byBh
IGxpc3Qgb2YgZml4ZWQgc2l6ZSBjaHVua3MgdGFrZW4gZnJvbSBDTUEuCgpPdmVybHkgbG9uZyBs
aW5lLCB3aGljaCBpbiB0ZXh0IGZsb3dpbmcgdGV4dCBpcyByZWFsbHksIHJlYWxseSBhbm5veWlu
Zy4KCk1hbnkgbW9yZSBsYXRlci4gIFJlbWVtYmVyIHRoYXQgPiA4MCBjaGFycyBhcmUgb25seSBh
bGxvd2VkIGlmIHRoZXkKc2lnbmlmaWNhbnRseSBpbXByb3ZlIHJlYWRhYmlsaXR5LiAgCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
