Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0135D3047A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 20:11:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14ABB60639
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 19:11:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 07FE666754; Tue, 26 Jan 2021 19:11:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8223C6673A;
	Tue, 26 Jan 2021 19:10:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DD22B60639
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:10:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C81676673A; Tue, 26 Jan 2021 19:10:24 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by lists.linaro.org (Postfix) with ESMTPS id 8C84D60639
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:10:23 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id d13so4547984plg.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 11:10:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=/pySoVPj6x2FMVMDC3PwlkUp7Fwc7oRZb5nCpTSbyxQ=;
 b=s4Mc69heiXKVW/+FwCi9RTgfV2AsrVYyMuzz8Ad1ImU/RgsFFdPeOXadRl8jkz5dbI
 aiqQMDb0QkFwXF7uVUR/5/xCWX/gy5gnWM7ORKEYrZ88o5sGZeY44TN+yz/GMUv2MVIe
 wwrImT71s/dQtcplWh/4sllMTMAV/EDoTa62GFQO98f2q3PmzyrxsFB0XJd/ZO8fqOkO
 6OA0xb/eo7LARFrSk2IQ89ZSKy9WHxNvoaY1GTynZhyfi2IVIXsySUlU4tja6M6inm9e
 Tp2Dhsvi8ZAL6x/+BrWjlM1k4qswIWvvLe288h27T3j73NlVOmubFWjxk8clyO8Qehih
 WAeA==
X-Gm-Message-State: AOAM531vheBTgECM+rUtW61LjKVYCFyVju4vIqayZNQSChS0El4uAkbP
 Y1LSdPZUYSfTTEZrlQmSL4A=
X-Google-Smtp-Source: ABdhPJwWecYPRIlieWfot1SXaGDWSpfbRFecAz3my6DVfWYKNjOZ1cQl+qt2qR2hJDfOo2isASG1lQ==
X-Received: by 2002:a17:902:9049:b029:da:efd6:4c12 with SMTP id
 w9-20020a1709029049b02900daefd64c12mr7512150plz.12.1611688222672; 
 Tue, 26 Jan 2021 11:10:22 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id v2sm18941836pgs.50.2021.01.26.11.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 11:10:21 -0800 (PST)
Date: Tue, 26 Jan 2021 11:10:18 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBBpGji3BJYHidHs@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-3-minchan@kernel.org>
 <20210125131200.GG827@dhcp22.suse.cz> <YA8dEFSrHBb9muFr@google.com>
 <20210126074449.GA827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126074449.GA827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 2/4] mm: failfast mode with
 __GFP_NORETRY in alloc_contig_range
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6NDQ6NDlBTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIE1vbiAyNS0wMS0yMSAxMTozMzozNiwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBNb24sIEphbiAyNSwgMjAyMSBhdCAwMjoxMjowMFBNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gPiA+IE9uIFRodSAyMS0wMS0yMSAwOTo1NTowMCwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
PiA+ID4gQ29udGlndW91cyBtZW1vcnkgYWxsb2NhdGlvbiBjYW4gYmUgc3RhbGxlZCBkdWUgdG8g
d2FpdGluZwo+ID4gPiA+IG9uIHBhZ2Ugd3JpdGViYWNrIGFuZC9vciBwYWdlIGxvY2sgd2hpY2gg
Y2F1c2VzIHVucHJlZGljdGFibGUKPiA+ID4gPiBkZWxheS4gSXQncyBhIHVuYXZvaWRhYmxlIGNv
c3QgZm9yIHRoZSByZXF1ZXN0b3IgdG8gZ2V0ICpiaWcqCj4gPiA+ID4gY29udGlndW91cyBtZW1v
cnkgYnV0IGl0J3MgZXhwZW5zaXZlIGZvciAqc21hbGwqIGNvbnRpZ3VvdXMKPiA+ID4gPiBtZW1v
cnkoZS5nLiwgb3JkZXItNCkgYmVjYXVzZSBjYWxsZXIgY291bGQgcmV0cnkgdGhlIHJlcXVlc3QK
PiA+ID4gPiBpbiBkaWZmZXJlbnQgcmFuZ2Ugd2hlcmUgd291bGQgaGF2ZSBlYXN5IG1pZ3JhdGFi
bGUgcGFnZXMKPiA+ID4gPiB3aXRob3V0IHN0YWxsaW5nLgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMg
cGF0Y2ggaW50cm9kdWNlIF9fR0ZQX05PUkVUUlkgYXMgY29tcGFjdGlvbiBnZnBfbWFzayBpbgo+
ID4gPiA+IGFsbG9jX2NvbnRpZ19yYW5nZSBzbyBpdCB3aWxsIGZhaWwgZmFzdCB3aXRob3V0IGJs
b2NraW5nCj4gPiA+ID4gd2hlbiBpdCBlbmNvdW50ZXJzIHBhZ2VzIG5lZWRlZCB3YWl0aW5nLgo+
ID4gPiAKPiA+ID4gSSBhbSBub3QgYWdhaW5zdCBjb250cm9saW5nIGhvdyBoYXJkIHRoaXMgYWxs
b2NhdG9yIHRyaWVzIHdpdGggZ2ZwIG1hc2sKPiA+ID4gYnV0IHRoaXMgY2hhbmdlbG9nIGlzIHJh
dGhlciB2b2lkIG9uIGFueSBkYXRhIGFuZCBhbnkgdXNlci4KPiA+ID4gCj4gPiA+IEl0IGlzIGFs
c28gcmF0aGVyIGR1YmlvdXMgdG8gaGF2ZSByZXRyaWVzIHdoZW4gdGhlbiBjYWxsZXIgc2F5cyB0
byBub3QKPiA+ID4gcmV0cnkuCj4gPiAKPiA+IFNpbmNlIG1heF90cmllcyBpcyAxIHdpdGggKyt0
cmllcywgaXQgc2hvdWxkbid0IHJldHJ5Lgo+IAo+IE9LLCBJIGhhdmUgbWlzc2VkIHRoYXQuIFRo
aXMgaXMgYSB0cmlja3kgY29kZS4gQVNZTkMgbW9kZSBzaG91bGQgYmUKPiBjb21wbGV0ZWx5IG9y
dGhvZ29uYWwgdG8gdGhlIHJldHJpZXMgY291bnQuIFRob3NlIGFyZSBkaWZmZXJlbnQgdGhpbmdz
Lgo+IFBhZ2UgYWxsb2NhdG9yIGRvZXMgYW4gZXhwbGljaXQgYmFpbCBvdXQgYmFzZWQgb24gX19H
RlBfTk9SRVRSWS4gWW91Cj4gc2hvdWxkIGJlIGRvaW5nIHRoZSBzYW1lLgoKQSBjb25jZXJuIHdp
dGggX19HRlBfTk9XQUlUIGlzIHJlZ2FyZGxlc3Mgb2YgZmxhZ3MgcGFzc2VkIHRvIGNtYV9hbGxv
YywKaW50ZXJuYWwgaW1wbGVtZW50YXRpb24gb2YgYWxsb2NfY29udGlnX3JhbmdlIGluc2lkZSB3
aWxsIHVzZSBibG9ja2FibGUKb3BlcmF0aW9uLiBTZWUgX19hbGxvY19jb250aWdfbWlncmF0ZV9y
YW5nZS4KCklmIHdlIGdvIHdpdGggX19HRlBfTk9XQUlULCB3ZSBzaG91bGQgcHJvcGFnYXRlIHRo
ZSBnZnBfbWFzayBpbnNpZGUgb2YKX19hbGxvY19jb250aWdfbWlncmF0ZV9yYW5nZSB0byBtYWtl
IGNtYV9hbGxvYyBjb25zaXN0ZW50IHdpdGggYWxsb2NfcGFnZXMuCihJSVVDLCB0aGF0J3Mgd2hh
dCB5b3Ugd2FudCAtIG1ha2UgZ2ZwX21hc2sgY29uc2lzdGVudCBiZXR3ZWVuIGNtYV9hbGxvYwph
bmQgYWxsb2NfcGFnZXMpIGJ1dCBJIGFtIHdvcnJ5IGFib3V0IHRoZSBkaXJlY3Rpb24gd2lsbCBt
YWtlIGNvbXBsaWNhdGUKc2l0dWF0aW9uIHNpbmNlIGNtYSBpbnZvdmxlcyBtaWdyYXRpb24gY29u
dGV4dCBhcyB3ZWxsIGFzIHRhcmdldCBwYWdlCmFsbG9jYXRpb24gY29udGV4dC4gU29tZXRpbWUs
IHRoZSBzaW5nbGUgZ2ZwIGZsYWcgY291bGQgYmUgdHJvdWJsZQp0byBleHByZXNzIGJvdGggY29u
dGV4dHMgYWxsIGF0IG9uY2UuIAoKPiAKPiA+ID4gCj4gPiA+IEFsc28gd2h5IGRpZG4ndCB5b3Ug
Y29uc2lkZXIgR0ZQX05PV0FJVCBzZW1hbnRpYyBmb3Igbm9uIGJsb2NraW5nIG1vZGU/Cj4gPiAK
PiA+IEdGUF9OT1dBSVQgc2VlbXMgdG8gYmUgbG93KHNwZWNpZmljKSBmbGFncyByYXRoZXIgdGhh
biB0aGUgb25lIEkgd2FudCB0bwo+ID4gZXhwcmVzcy4gRXZlbiB0aG91Z2ggSSBzYWlkIG9ubHkg
cGFnZSB3cml0ZWJhY2svbG9jayBpbiB0aGUgZGVzY3JpcHRpb24sCj4gPiB0aGUgZ29hbCBpcyB0
byBhdm9pZCBjb3N0bHkgb3BlcmF0aW9ucyB3ZSBtaWdodCBmaW5kIGxhdGVyIHNvIHN1Y2gKPiA+
ICJmYWlsZmFzdCIsIEkgdGhvdWdodCBHRlBfTk9SRVRSWSB3b3VsZCBiZSBnb29kIGZpdC4KPiAK
PiBJIHN1c3BlY3QgeW91IGFyZSB0b28gZm9jdXNlZCBvbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWxz
IGhlcmUuIFRoaW5rCj4gYWJvdXQgdGhlIGluZGVuZGVkIHNlbWFudGljLiBDYWxsZXJzIG9mIHRo
aXMgZnVuY3Rpb25hbGl0eSB3aWxsIG5vdAo+IHRoaW5rIGFib3V0IHRob3NlIChJIGhvcGUgYmVj
YXVzZSBpZiB0aGV5IHJlbHkgb24gdGhlc2UgZGV0YWlscyB0aGVuIHRoZQo+IHdob2xlIHRoaW5n
IHdpbGwgYmVjb21lIHVubWFpbnRhaW5hYmxlIGJlY2F1c2UgYW55IGNoYW5nZSB3b3VsZCByZXF1
aXJlCj4gYW4gYXVkaXQgb2YgYWxsIGV4aXN0aW5nIHVzZXJzKS4gQWxsIHlvdSBzaG91bGQgYmUg
Y2FyaW5nIGFib3V0IGlzIHRvCj4gY29udHJvbCBob3cgZXhwZW5zaXZlIHRoZSBjYWxsIGNhbiBi
ZS4gR0ZQX05PV0FJVCBpcyBub3QgcmVhbGx5IGxvdwo+IGxldmVsIGZyb20gdGhhdCBQT1YuIEl0
IGdpdmVzIHlvdSBhIHZlcnkgbGlnaHR3ZWlnaHQgbm9uLXNsZWVwaW5nCj4gYXR0ZW1wdCB0byBh
bGxvY2F0ZS4gR0ZQX05PUkVUUlkgd2lsbCBnaXZlIHlvdSBwb3RlbnRpYWxseSBzbGVlcGluZyBi
dXQKPiBhbiBvcHBvcnR1bmlzdGljLWVhc3ktdG8tZmFpbCBhdHRlbXB0LiBBbmQgc28gb24uIFNl
ZSBob3cgdGhhdCBpcwo+IGFic29sdXRlbHkgZnJlZSBvZiBhbnkgcGFnZSB3cml0ZWJhY2sgb3Ig
YW55IHNwZWNpZmljIGxvY2tpbmcuCgpXaXRoIGFib3ZlIHJlYXNvbiBJIG1lbnRpb25lZCwgSSB3
YW50ZWQgdG8gZXhwcmVzcyBfX0dGUF9OT1JFVFJZIGFzIAoib3Bwb3J0dW5pc3RpYy1lYXN5LXRv
LWZhaWwgYXR0ZW1wdCIgdG8gc3VwcG9ydCBjbWFfYWxsb2MgYXMgImZhaWxmYXN0Igpmb3IgbWln
cmF0aW9uIGNvbnRleHQuCgo+IC0tIAo+IE1pY2hhbCBIb2Nrbwo+IFNVU0UgTGFicwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
