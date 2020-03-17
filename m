Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4745E187B11
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 09:18:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 669A66180F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2020 08:18:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5ACE76198B; Tue, 17 Mar 2020 08:18:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 969456195A;
	Tue, 17 Mar 2020 08:17:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F19BC608BA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 08:17:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DC9E46195A; Tue, 17 Mar 2020 08:17:56 +0000 (UTC)
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by lists.linaro.org (Postfix) with ESMTPS id 7FEA6608BA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2020 08:17:55 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3646A20044;
 Tue, 17 Mar 2020 09:17:52 +0100 (CET)
Date: Tue, 17 Mar 2020 09:17:51 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200317081751.GA1455@ravnborg.org>
References: <20200317071547.1008622-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317071547.1008622-1-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=IJv9LcIfAAAA:8
 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=KKAkSRfTAAAA:8 a=QyXUC8HyAAAA:8
 a=yHm9WYn_3syTCuk5iU0A:9 a=CjuIK1q_8ugA:10 a=cmr4hm9N53k6aw-X_--Q:22
 a=AjGcO6oz07-iQ99wixmX:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=cvBusfyB2V15izCimMoJ:22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Joe Perches <joe@perches.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Better regex for
	dma_buf|fence|resv
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

SGkgRGFuaWVsLgoKT24gVHVlLCBNYXIgMTcsIDIwMjAgYXQgMDg6MTU6NDdBTSArMDEwMCwgRGFu
aWVsIFZldHRlciB3cm90ZToKPiBXZSdyZSBnZXR0aW5nIHNvbWUgcmFuZG9tIG90aGVyIHN0dWZm
IHRoYXQgd2UncmUgbm90IHJlbGx5IGludGVyZXN0ZWQKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlYWxseQoKPiBpbiwgc28gbWF0Y2ggb25s
eSB3b3JkIGJvdW5kYXJpZXMuIEFsc28gYXZvaWQgdGhlIGNhcHR1cmUgZ3JvdXAgd2hpbGUKPiBh
dCBpdC4KPiAKPiBTdWdnZXN0ZWQgYnkgSm9lIFBlcmNoZXMuCgpZb3Ugd2FudCBhOgpTdWdnZXN0
ZWQtYnk6IEpvZSBQZXJjaGVzIDxqb2VAcGVyY2hlcy5jb20+CgpUaGUgcGF0Y2ggbG9va3MgY29y
cmVjdCwgYnV0IEkgYW0gbm90IGZsdWVudCBpbiBwZXJsaXNoLgoKCVNhbQo+IAo+IENjOiBsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBDYzogSm9lIFBlcmNo
ZXMgPGpvZUBwZXJjaGVzLmNvbT4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KPiAtLS0KPiAgTUFJTlRBSU5FUlMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVS
UyBiL01BSU5UQUlORVJTCj4gaW5kZXggMzAwNWJlNjM4YzJjLi5mYzVkNWFhNTMxNDcgMTAwNjQ0
Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC01MDI1LDcgKzUw
MjUsNyBAQCBGOglpbmNsdWRlL2xpbnV4L2RtYS1idWYqCj4gIEY6CWluY2x1ZGUvbGludXgvcmVz
ZXJ2YXRpb24uaAo+ICBGOglpbmNsdWRlL2xpbnV4LypmZW5jZS5oCj4gIEY6CURvY3VtZW50YXRp
b24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+IC1LOglkbWFfKGJ1ZnxmZW5jZXxyZXN2KQo+ICtL
OgknXGJkbWFfKD86YnVmfGZlbmNlfHJlc3YpXGInCj4gIFQ6CWdpdCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MKPiAgCj4gIERNQS1CVUYgSEVBUFMgRlJBTUVXT1JL
Cj4gLS0gCj4gMi4yNS4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
