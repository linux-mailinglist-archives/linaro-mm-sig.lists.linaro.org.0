Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F482B87AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 23:27:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64B6C666E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 22:27:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58309666EF; Wed, 18 Nov 2020 22:27:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AA8266596;
	Wed, 18 Nov 2020 22:27:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D70B161877
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 22:27:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CBAE066596; Wed, 18 Nov 2020 22:27:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id F0F0761877
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 22:27:27 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EDF2246DC;
 Wed, 18 Nov 2020 22:27:26 +0000 (UTC)
Date: Wed, 18 Nov 2020 14:27:25 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: christian.koenig@amd.com
Message-Id: <20201118142725.aa4678810546c70520dd5d74@linux-foundation.org>
In-Reply-To: <e5a25173-ebea-d856-ed25-45437769f17f@gmail.com>
References: <20201106114806.46015-1-christian.koenig@amd.com>
 <20201106114806.46015-2-christian.koenig@amd.com>
 <20201106144811.cf228ca9278ec78887d42960@linux-foundation.org>
 <e5a25173-ebea-d856-ed25-45437769f17f@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
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

T24gV2VkLCAxOCBOb3YgMjAyMCAxMTo1Nzo0NCArMDEwMCBDaHJpc3RpYW4gS8O2bmlnIDxja29l
bmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IEFtIDA2LjExLjIwIHVtIDIz
OjQ4IHNjaHJpZWIgQW5kcmV3IE1vcnRvbjoKPiA+IE9uIEZyaSwgIDYgTm92IDIwMjAgMTI6NDg6
MDUgKzAxMDAgIkNocmlzdGlhbiBLw7ZuaWciIDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPgo+ID4+IFBhdGNoICI0OTVjMTBjYzFjMGMgQ0hST01JVU06IGRtYS1i
dWY6IHJlc3RvcmUgYXJncy4uLiIKPiA+PiBhZGRzIGEgd29ya2Fyb3VuZCBmb3IgYSBidWcgaW4g
bW1hcF9yZWdpb24uCj4gPj4KPiA+PiBBcyB0aGUgY29tbWVudCBzdGF0ZXMgLT5tbWFwKCkgY2Fs
bGJhY2sgY2FuIGNoYW5nZQo+ID4+IHZtYS0+dm1fZmlsZSBhbmQgc28gd2UgbWlnaHQgY2FsbCBm
cHV0KCkgb24gdGhlIHdyb25nIGZpbGUuCj4gPj4KPiA+PiBSZXZlcnQgdGhlIHdvcmthcm91bmQg
YW5kIHByb3BlciBmaXggdGhpcyBpbiBtbWFwX3JlZ2lvbi4KPiA+Pgo+ID4gU2VlbXMgY29ycmVj
dCwgYmVzdCBJIGNhbiB0ZWxsLiAgUHJlc3VtYWJseSBhbGwgLT5tbWFwKCkgaW5zdGFuY2VzIHdp
bGwKPiA+IGNvcnJlY3RseSBmcHV0KCkgdG8gb3JpZ2luYWwgZmlsZSogaWYgdGhleSdyZSByZXdy
aXRpbmcgdm1hLT52bV9maWxlLgo+IAo+IFllcywgZXhhY3RseS4KPiAKPiBQYXRjaCAjMiBwcm92
aWRlcyBhIGhlbHBlciB0byBtYWtlIHN1cmUgdGhhdCBldmVyeWJvZHkgZ2V0cyB0aGUgCj4gZ2V0
X2ZpbGUoKS9mcHV0KCkgY29ycmVjdGx5IHdoaWxlIHVwZGF0aW5nIHZtYS0+dm1fZmlsZS4KPiAK
PiBDYW4gSSBhZGQgeW91ciBhY2tlZC1ieSB0byB0aGUgcGF0Y2hlcyBhbmQgcHVzaCB0aGVtIHVw
c3RyZWFtIHRocm91Z2ggCj4gZHJtLW1pc2MtbmV4dD8KClBsZWFzZSBnbyBhaGVhZC4KCkFja2Vk
LWJ5OiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
