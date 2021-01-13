Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4675E2F4291
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 04:39:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FD966670D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 03:39:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C35966731; Wed, 13 Jan 2021 03:39:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09AFD66722;
	Wed, 13 Jan 2021 03:38:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 35E7B666E9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 03:38:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1295466722; Wed, 13 Jan 2021 03:38:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by lists.linaro.org (Postfix) with ESMTPS id 5CCAC666E9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 03:38:51 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::9abc]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzWzg-0001Lx-TY; Wed, 13 Jan 2021 03:38:49 +0000
To: Minchan Kim <minchan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <23b60450-b6ac-447b-4a61-fc4649c3a390@infradead.org>
Date: Tue, 12 Jan 2021 19:38:40 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210113012143.1201105-5-minchan@kernel.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
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

T24gMS8xMi8yMSA1OjIxIFBNLCBNaW5jaGFuIEtpbSB3cm90ZToKPiArY29uZmlnIERNQUJVRl9I
RUFQU19DSFVOSwo+ICsJYm9vbCAiRE1BLUJVRiBDSFVOSyBIZWFwIgo+ICsJZGVwZW5kcyBvbiBE
TUFCVUZfSEVBUFMgJiYgRE1BX0NNQQo+ICsJaGVscAo+ICsJICBDaG9vc2UgdGhpcyBvcHRpb24g
dG8gZW5hYmxlIGRtYS1idWYgQ0hVTksgaGVhcC4gVGhpcyBoZWFwIGlzIGJhY2tlZAo+ICsJICBi
eSB0aGUgQ29udGlndW91cyBNZW1vcnkgQWxsb2NhdG9yIChDTUEpIGFuZCBhbGxvY2F0ZXMgdGhl
IGJ1ZmZlcnMgdGhhdAo+ICsJICBhcnJhbmdlZCBpbnRvIGEgbGlzdCBvZiBmaXhlZCBzaXplIGNo
dW5rcyB0YWtlbiBmcm9tIENNQS4KCm1heWJlOgoJICBhcmUgYXJyYW5nZWQgaW50bwoKLS0gCn5S
YW5keQpZb3UgY2FuJ3QgZG8gYW55dGhpbmcgd2l0aG91dCBoYXZpbmcgdG8gZG8gc29tZXRoaW5n
IGVsc2UgZmlyc3QuCi0tIEJlbGVmYW50J3MgTGF3Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
