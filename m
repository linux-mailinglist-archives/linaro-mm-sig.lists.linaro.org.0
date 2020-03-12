Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D46182E23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 11:48:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B64360BE7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 10:48:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1015260F57; Thu, 12 Mar 2020 10:48:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CE29609BE;
	Thu, 12 Mar 2020 10:47:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AB02607A7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:47:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6D40D609BE; Thu, 12 Mar 2020 10:47:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 4C062607A7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:47:32 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCLNB-0000ce-O1; Thu, 12 Mar 2020 10:47:29 +0000
Date: Thu, 12 Mar 2020 03:47:29 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200312104729.GA26031@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 jgg@ziepe.ca, daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add
	sg_set_dma_addr() function
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

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6MzE6MzVBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBCdXQgaG93IHNob3VsZCB3ZSB0aGVuIGRlYWwgd2l0aCBhbGwgdGhlIGV4aXN0
aW5nIGludGVyZmFjZXMgd2hpY2ggYWxyZWFkeQo+IHRha2UgYSBzY2F0dGVybGlzdC9zZ190YWJs
ZSA/Cj4KPiBUaGUgd2hvbGUgRE1BLWJ1ZiBkZXNpZ24gYW5kIGEgbG90IG9mIGRyaXZlcnMgYXJl
IGJ1aWxkIGFyb3VuZAo+IHNjYXR0ZXJsaXN0L3NnX3RhYmxlIGFuZCB0byBtZSB0aGF0IGFjdHVh
bGx5IG1ha2VzIHF1aXRlIGEgbG90IG9mIHNlbnNlLgo+IAoKUmVwbGFjZSB0aGVtIHdpdGggYSBz
YW5lciBpbnRlcmZhY2UgdGhhdCBkb2Vzbid0IHRha2UgYSBzY2F0dGVybGlzdC4KQXQgdmVyeSBs
ZWFzdCBmb3IgbmV3IGZ1bmN0aW9uYWxpdHkgbGlrZSBwZWVyIHRvIHBlZXIgRE1BLCBidXQKZXNw
ZWNpYWxseSB0aGlzIGNvZGUgd291bGQgYWxzbyBiZW5lZml0IGZyb20gYSBnZW5lcmFsIG1vdmUg
YXdheQpmcm9tIHRoZSBzY2F0dGVybGlzdC4KCj4gRm9yIFRUTSBJJ20gYWxzbyB0cnlpbmcgZm9y
IHF1aXRlIGEgd2hpbGUgdG8ganVzdCBudWtlIHRoZSBtYW51YWwKPiBkbWFfYWRkcmVzcyBhcnJh
eXMgd2UgaGF2ZSBhbmQgc3dpdGNoIG92ZXIgdG8gc2NhdHRlcmxpc3Qvc2dfdGFibGUuCgpXaGlj
aCBpcyBhIG1vdmUgaW4gdGhlIHdyb25nIGRpcmVjdGlvbi4KCj4gSSBtZWFuIHdlIGNvdWxkIGNv
bWUgdXAgd2l0aCBhIG5ldyBzdHJ1Y3R1cmUgZm9yIHRoaXMsIGJ1dCB0byBtZSB0aGF0IGp1c3QK
PiBsb29rcyBsaWtlIHJlaW52ZW50aW5nIHRoZSB3aGVlbC4gRXNwZWNpYWxseSBzaW5jZSBkcml2
ZXJzIG5lZWQgdG8gYmUgYWJsZQo+IHRvIGhhbmRsZSBib3RoIEkvTyB0byBzeXN0ZW0gbWVtb3J5
IGFuZCBJL08gdG8gUENJZSBCQVJzLgoKVGhlIHN0cnVjdHVyZSBmb3IgaG9sZGluZyB0aGUgc3Ry
dWN0IHBhZ2Ugc2lkZSBvZiB0aGUgc2NhdHRlcmxpc3QgaXMKY2FsbGVkIHN0cnVjdCBiaW9fdmVj
LCBzbyBmYXIgbW9zdGx5IHVzZWQgYnkgdGhlIGJsb2NrIGFuZCBuZXR3b3JraW5nCmNvZGUuICBU
aGUgc3RydWN0dXJlIGZvciBob2xkaW5nIGRtYSBhZGRyZXNzZXMgZG9lc24ndCByZWFsbHkgZXhp
c3QKaW4gYSBnZW5lcmljIGZvcm0sIGJ1dCB3b3VsZCBiZSBhbiBhcnJheSBvZiB0aGVzZSBzdHJ1
Y3R1cmVzOgoKc3RydWN0IGRtYV9zZyB7CglkbWFfYWRkcl90CWFkZHI7Cgl1MzIJCWxlbjsKfTsK
CktlZXBpbmcgdGhlbSBzZXBhcmF0ZSBpcyBpbXBvcnRhbnQgYXMgbW9zdCBJT01NVSBkcml2ZXJz
IHdpbGwgcmV0dXJuCmxlc3MgZW50cmllcyB0aGFuIHlvdSBjYW4gZmVlZCB0aGVtLiAgRS5nLiBp
ZiB5b3VyIGlucHV0IGJvdW5kYXJpZXMKYXJlIDRrIGFsaWduZWQgeW91IHdpbGwgdXN1YWxseSBq
dXN0IGdldCBhIHNpbmdsZSBJT1ZBIGVudHJ5IGJhY2suCkkgd2lsbCBzb29uIGFsc28gaGF2ZSBh
IGRtYSBtYXBwaW5nIGludGVyZmFjZSB0aGF0IHdpbGwgdGFrZSBhZHZhbnRhZ2UKb2YgdGhhdCBm
YWN0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
