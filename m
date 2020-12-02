Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B52CC455
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 18:55:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35C87665F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 17:55:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 077A3666E2; Wed,  2 Dec 2020 17:55:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DD95665CA;
	Wed,  2 Dec 2020 17:54:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2BDB66597
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 17:54:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C79F3665CA; Wed,  2 Dec 2020 17:54:35 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 96F2F66597
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 17:54:34 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id p21so861398pjv.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Dec 2020 09:54:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=UNKWdsiogoUet2aqz/JwzPrZ2X40+ZcKRQbStzwokt0=;
 b=uMT/fSR9x8YfTkRESn05lAiv+xMuwbF5snMnKDSu9XN5YQwUiM1iDnrCoheiT+0kTu
 TJlz0PU8mhw1BtffiotMA+FbIwBqqzEAIZesO3DIg4mpv/CxQtrvrBCozysDR/kT8LcY
 hcuJUIabp6b51Pf2RH7giflSAF9utH4f+qUAJzAa7neqMD4VMwAer1GYAsvm6T+AIlo4
 d78BlSrykPSHpmNlfFQhzdH5o4BTs0TpcwRU9OXWfQEYbsrhsuEqpObN4M44uxl1YJK7
 kiCZwgIN4uv7mhGICWjyIi8GAguwQhhVBVbnNuFfmjMvAdWs6VsKGn/NVMXnE9jgjpVh
 ATNw==
X-Gm-Message-State: AOAM533ds3+SssO9KwJ+5cUFZ7M6qlPwXsQ97DLSzhYslRXLAWTLoDLy
 RdK1xOfuCyx6Blw7dsYWP/8=
X-Google-Smtp-Source: ABdhPJwBaisCw9eYl7Ol+VCo/5w7dy23oiZjb0JInGv5r1eT2cOTilc+02VuZ6NOT1gRo3hlHWW6/g==
X-Received: by 2002:a17:902:eb0c:b029:da:51da:cdac with SMTP id
 l12-20020a170902eb0cb02900da51dacdacmr3686446plb.4.1606931673751; 
 Wed, 02 Dec 2020 09:54:33 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id t9sm282269pjq.46.2020.12.02.09.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 09:54:32 -0800 (PST)
Date: Wed, 2 Dec 2020 09:54:29 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <X8fU1ddmsSfuV6sD@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz>
 <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202164834.GV17338@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 linux-mm <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/4] mm: introduce cma_alloc_bulk API
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

T24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDU6NDg6MzRQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFdlZCAwMi0xMi0yMCAwODoxNTo0OSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBXZWQsIERlYyAwMiwgMjAyMCBhdCAwNDo0OToxNVBNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gWy4uLl0KPiA+ID4gV2VsbCwgd2hhdCBJIGNhbiBzZWUgaXMgdGhhdCB0aGlzIG5ldyBp
bnRlcmZhY2UgaXMgYW4gYW50aXBhdGVybiB0byBvdXIKPiA+ID4gYWxsb2NhdGlvbiByb3V0aW5l
cy4gV2UgdGVuZCB0byBjb250cm9sIGFsbG9jYXRpb25zIGJ5IGdmcCBtYXNrIHlldCB5b3UKPiA+
ID4gYXJlIGludHJvZHVjaW5nIGEgYm9vbCBwYXJhbWV0ZXIgdG8gbWFrZSBzb21ldGhpbmcgZmFz
dGVyLi4uIFdoYXQgdGhhdAo+ID4gPiByZWFsbHkgbWVhbnMgaXMgcmF0aGVyIGFyYml0cmFyeS4g
V291bGQgaXQgbWFrZSBtb3JlIHNlbnNlIHRvIHRlYWNoCj4gPiA+IGNtYV9hbGxvYyByZXNwLiBh
bGxvY19jb250aWdfcmFuZ2UgdG8gcmVjb2duaXplIEdGUF9OT1dBSVQsIEdGUF9OT1JFVFJZIHJl
c3AuCj4gPiA+IEdGUF9SRVRSWV9NQVlGQUlMIGluc3RlYWQ/Cj4gPiAKPiA+IElmIHdlIHVzZSBj
bWFfYWxsb2MsIHRoYXQgaW50ZXJmYWNlIHJlcXVpcmVzICJhbGxvY2F0ZSBvbmUgYmlnIG1lbW9y
eQo+ID4gY2h1bmsiLiBJT1csIHJldHVybiB2YWx1ZSBpcyBqdXN0IHN0cnVjdCBwYWdlIGFuZCBl
eHBlY3RlZCB0aGF0IHRoZSBwYWdlCj4gPiBpcyBhIGJpZyBjb250aWd1b3MgbWVtb3J5LiBUaGF0
IG1lYW5zIGl0IGNvdWxkbid0IGhhdmUgYSBob2xlIGluIHRoZQo+ID4gcmFuZ2UuCj4gPiBIb3dl
dmVyIHRoZSBpZGVhIGhlcmUsIHdoYXQgd2UgYXNrZWQgaXMgbXVjaCBzbWFsbGVyIGNodW5rIHJh
dGhlcgo+ID4gdGhhbiBhIGJpZyBjb250aWd1b3VzIG1lbW9yeSBzbyB3ZSBjb3VsZCBza2lwIHNv
bWUgb2YgcGFnZXMgaWYgdGhleSBhcmUKPiA+IHJhbmRvbWx5IHBpbm5lZChsb25nLXRlcm0vc2hv
cnQtdGVybSB3aGF0ZXZlcikgYW5kIHNlYXJjaCBvdGhlciBwYWdlcwo+ID4gaW4gdGhlIENNQSBh
cmVhIHRvIGF2b2lkIGxvbmcgc3RhbGwuIFRodXMsIGl0IGNvdWxkbid0IHdvcmsgd2l0aCBleGlz
aW5nCj4gPiBjbWFfYWxsb2MgQVBJIHdpdGggc2ltcGxlIGdmcF9tYWsuCj4gCj4gSSByZWFsbHkg
ZG8gbm90IHNlZSB0aGF0IGFzIHNvbWV0aGluZyByZWFsbHkgYWxpZW50IHRvIHRoZSBjbWFfYWxs
b2MKPiBpbnRlcmZhY2UuIEFsbCB5b3Ugc2hvdWxkIGNhcmUgYWJvdXQsIHJlYWxseSwgaXMgd2hh
dCBzaXplIG9mIHRoZSBvYmplY3QKPiB5b3Ugd2FudCBhbmQgaG93IGhhcmQgdGhlIHN5c3RlbSBz
aG91bGQgdHJ5LiBJZiB5b3UgaGF2ZSBhIHByb2JsZW0gd2l0aAo+IGFuIGludGVybmFsIGltcGxl
bWVudGF0aW9uIG9mIENNQSBhbmQgaG93IGl0IGNob29zZXMgYSByYW5nZSBhbmQgZGVhbAo+IHdp
dGggcGlubmVkIHBhZ2VzIHRoZW4gaXQgc2hvdWxkIGJlIGFkZHJlc3NlZCBpbnNpZGUgdGhlIENN
QSBhbGxvY2F0b3IuCj4gSSBzdXNwZWN0IHRoYXQgeW91IGFyZSBlZmZlY3RpdmVsbHkgdHJ5aW5n
IHRvIHdvcmthcm91bmQgdGhvc2UgcHJvYmxlbXMKPiBieSBhIHNpZGUgaW1wbGVtZW50YXRpb24g
d2l0aCBhIHNsaWdodGx5IGRpZmZlcmVudCBBUEkuIE9yIG1heWJlIEkgc3RpbGwKPiBkbyBub3Qg
Zm9sbG93IHRoZSBhY3R1YWwgcHJvYmxlbS4KPiAgCj4gPiA+IEkgYW0gbm90IGRlZXBseSBmYW1p
bGlhciB3aXRoIHRoZSBjbWEgYWxsb2NhdG9yIHNvIHNvcnJ5IGZvciBhCj4gPiA+IHBvdGVudGlh
bGx5IHN0dXBpZCBxdWVzdGlvbi4gV2h5IGRvZXMgYSBidWxrIGludGVyZmFjZSBwZXJmb3JtcyBi
ZXR0ZXIKPiA+ID4gdGhhbiByZXBlYXRlZCBjYWxscyB0byBjbWFfYWxsb2M/IElzIHRoaXMgYmVj
YXVzZSBhIGZhaWx1cmUgd291bGQgaGVscAo+ID4gPiB0byBtb3ZlIG9uIHRvIHRoZSBuZXh0IHBm
biByYW5nZSB3aGlsZSBhIHJlcGVhdGVkIGNhbGwgd291bGQgaGF2ZSB0bwo+ID4gPiBkZWFsIHdp
dGggdGhlIHNhbWUgcmFuZ2U/Cj4gPiAKPiA+IFl1YiwgdHJ1ZSB3aXRoIG90aGVyIG92ZXJoZWFk
cyhlLmcuLCBtaWdyYXRpb24gcmV0cmlhbCwgd2FpdGluZyB3cml0ZWJhY2sKPiA+IFBDUC9MUlUg
ZHJhaW5pbmcgSVBJKQo+IAo+IFdoeSBjYW5ub3QgdGhpcyBiZSBpbXBsZW1lbnRlZCBpbiB0aGUg
Y21hX2FsbG9jIGxheWVyPyBJIG1lYW4geW91IGNhbgo+IGNhY2hlIGZhaWxlZCBjYXNlcyBhbmQg
b3B0aW1pemUgdGhlIHByb3BlciBwZm4gcmFuZ2Ugc2VhcmNoLgoKU28gZG8geW91IHN1Z2dlc3Qg
dGhpcz8KCmVudW0gY21hX2FsbG9jX21vZGUgewoJQ01BX0FMTE9DX05PUk1BTCwKCUNNQV9BTExP
Q19GQUlMX0ZBU1QsCn07CgpzdHJ1Y3QgcGFnZSAqY21hX2FsbG9jKHN0cnVjdCBjbWEgKmNtYSwg
c2l6ZV90IGNvdW50LCB1bnNpZ25lZCBpbnQKCWFsaWduLCBlbnVtIGNtYV9hbGxvY19tb2RlIG1v
ZGUpOwoKRnJvbSBub3cgb24sIGNtYV9hbGxvYyB3aWxsIGtlZXAgbGFzdCBmYWlsZWQgcGZuIGFu
ZCB0aGVuIHN0YXJ0IHRvCnNlYXJjaCBmcm9tIHRoZSBuZXh0IHBmbiBmb3IgYm90aCBDTUFfQUxM
T0NfTk9STUFMIGFuZApDTUFfQUxMT0NfRkFJTF9GQVNUIGlmIHJlcXVlc3RlZCBzaXplIGZyb20g
dGhlIGNhY2hlZCBwZm4gaXMgb2theQp3aXRoaW4gQ01BIGFyZWEgYW5kIHRoZW4gd3JhcGFyb3Vu
ZCBpdCBjb3VsZG4ndCBmaW5kIHJpZ2h0IHBhZ2VzCmZyb20gdGhlIGNhY2hlZCBwZm4uIE90aGV3
aXNlLCB0aGUgY2FjaGVkIHBmbiB3aWxsIHJlc2V0IHRvIHRoZSB6ZXJvCnNvIHRoYXQgaXQgc3Rh
cnRzIHRoZSBzZWFyY2ggZnJvbSB0aGUgMC4gSSBsaWtlIHRoZSBpZGVhIHNpbmNlIGl0J3MKZ2Vu
ZXJhbCBpbXByb3ZlbWVudCwgSSB0aGluay4KCkZ1cnRoZW1vcmUsIFdpdGggQ01BX0FMTE9DX0ZB
SUxfRkFTVCwgaXQgY291bGQgYXZvaWQgc2V2ZXJhbCBvdmVyaGVhZHMKYXQgdGhlIGNvc3Qgb2Yg
c2FjcmlmaWNpbmcgYWxsb2NhdGlvbiBzdWNjZXNzIHJhdGlvIGxpa2UgR0ZQX05PUkVUUlkuCgpJ
IHRoaW5rIHRoYXQgd291bGQgc29sdmUgdGhlIGlzc3VlIHdpdGggbWFraW5nIHRoZSBBUEkgbW9y
ZSBmbGV4aWJsZS4KQmVmb3JlIGRpdmluZyBpbnRvIGl0LCBJJ2QgbGlrZSB0byBjb25maXJtIHdl
IGFyZSBvbiBzYW1lIHBhZ2UuClBsZWFzZSBjb3JyZWN0IG1lIGlmIEkgbWlzdW5kZXJzdG9vZC4K
CkRhdmlkLCBhbnkgb2JqZWN0aW9uPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
