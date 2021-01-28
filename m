Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D466C307B7A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 17:57:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEC9966768
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 16:57:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E363B66766; Thu, 28 Jan 2021 16:57:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C586F61786;
	Thu, 28 Jan 2021 16:56:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D0CA8616FA
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 16:56:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C021961786; Thu, 28 Jan 2021 16:56:55 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by lists.linaro.org (Postfix) with ESMTPS id B237C616FA
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 16:56:54 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id i63so4370359pfg.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 08:56:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=r4OzxVPLRoxlIyBDmEaW5Gd8mifxKGEhoqDq5Ke4XvU=;
 b=PbSNEE6QE6h161sehmc0g/g30YYA72IL41XT9AUTLui5wChMrsCnj0HOEUs+vNyEqL
 otyFeBTnwAlbUwIFM9BryHUwBsCMRrW4/2hiNkFoLiRaqkAVacBMYKiCzLLmjDyinTSE
 Z3dDXfiqrUN0Ag/zTGz8b8fiSEY0JFny36nj2nxpk0+qqlkWJRZqzpsYFTucOB88ratW
 MwfPCj1FTwNLpSS6+xrDGcKQ+MIK7FA+wzFCNw9B4HEJTgH3Dv7Smy2xNx/7xaJx2bH5
 N1tfmu6t/uvkoULSJNozqcBIq7gK1vmnJ7AvY6PAXrLLbYu/1tk4NlNMbwZx3gUUSv/S
 wnUQ==
X-Gm-Message-State: AOAM533DHqF7pYoTtF5qqOFwQKPgZTkpMN8UN/5c0AENn7CzqTRYMfog
 hT6ECArW+mevGySYrB47vLY=
X-Google-Smtp-Source: ABdhPJz2IVz9uK0AemB8mpqL5wrFV3zUb5iR4XhPWnwF3rqsqF67H6tg2c8B6kXfDP/+ZKAmd6XYxw==
X-Received: by 2002:a63:ca45:: with SMTP id o5mr459086pgi.48.1611853013879;
 Thu, 28 Jan 2021 08:56:53 -0800 (PST)
Received: from google.com ([2620:15c:211:201:885b:c20e:b832:f82])
 by smtp.gmail.com with ESMTPSA id d133sm6037141pfd.6.2021.01.28.08.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 08:56:52 -0800 (PST)
Date: Thu, 28 Jan 2021 08:56:50 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBLs0oJY1PjCqv1q@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-3-minchan@kernel.org>
 <20210125131200.GG827@dhcp22.suse.cz> <YA8dEFSrHBb9muFr@google.com>
 <20210126074449.GA827@dhcp22.suse.cz> <YBHQRY8kw8/wjFK8@google.com>
 <YBJtdT5Tf5mRsE9U@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBJtdT5Tf5mRsE9U@dhcp22.suse.cz>
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMDg6NTM6MjVBTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFdlZCAyNy0wMS0yMSAxMjo0Mjo0NSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBUdWUsIEphbiAyNiwgMjAyMSBhdCAwODo0NDo0OUFNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gPiA+IE9uIE1vbiAyNS0wMS0yMSAxMTozMzozNiwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
PiA+ID4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6MTI6MDBQTSArMDEwMCwgTWljaGFsIEhv
Y2tvIHdyb3RlOgo+ID4gPiA+ID4gT24gVGh1IDIxLTAxLTIxIDA5OjU1OjAwLCBNaW5jaGFuIEtp
bSB3cm90ZToKPiA+ID4gPiA+ID4gQ29udGlndW91cyBtZW1vcnkgYWxsb2NhdGlvbiBjYW4gYmUg
c3RhbGxlZCBkdWUgdG8gd2FpdGluZwo+ID4gPiA+ID4gPiBvbiBwYWdlIHdyaXRlYmFjayBhbmQv
b3IgcGFnZSBsb2NrIHdoaWNoIGNhdXNlcyB1bnByZWRpY3RhYmxlCj4gPiA+ID4gPiA+IGRlbGF5
LiBJdCdzIGEgdW5hdm9pZGFibGUgY29zdCBmb3IgdGhlIHJlcXVlc3RvciB0byBnZXQgKmJpZyoK
PiA+ID4gPiA+ID4gY29udGlndW91cyBtZW1vcnkgYnV0IGl0J3MgZXhwZW5zaXZlIGZvciAqc21h
bGwqIGNvbnRpZ3VvdXMKPiA+ID4gPiA+ID4gbWVtb3J5KGUuZy4sIG9yZGVyLTQpIGJlY2F1c2Ug
Y2FsbGVyIGNvdWxkIHJldHJ5IHRoZSByZXF1ZXN0Cj4gPiA+ID4gPiA+IGluIGRpZmZlcmVudCBy
YW5nZSB3aGVyZSB3b3VsZCBoYXZlIGVhc3kgbWlncmF0YWJsZSBwYWdlcwo+ID4gPiA+ID4gPiB3
aXRob3V0IHN0YWxsaW5nLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhpcyBwYXRjaCBpbnRy
b2R1Y2UgX19HRlBfTk9SRVRSWSBhcyBjb21wYWN0aW9uIGdmcF9tYXNrIGluCj4gPiA+ID4gPiA+
IGFsbG9jX2NvbnRpZ19yYW5nZSBzbyBpdCB3aWxsIGZhaWwgZmFzdCB3aXRob3V0IGJsb2NraW5n
Cj4gPiA+ID4gPiA+IHdoZW4gaXQgZW5jb3VudGVycyBwYWdlcyBuZWVkZWQgd2FpdGluZy4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gSSBhbSBub3QgYWdhaW5zdCBjb250cm9saW5nIGhvdyBoYXJkIHRo
aXMgYWxsb2NhdG9yIHRyaWVzIHdpdGggZ2ZwIG1hc2sKPiA+ID4gPiA+IGJ1dCB0aGlzIGNoYW5n
ZWxvZyBpcyByYXRoZXIgdm9pZCBvbiBhbnkgZGF0YSBhbmQgYW55IHVzZXIuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IEl0IGlzIGFsc28gcmF0aGVyIGR1YmlvdXMgdG8gaGF2ZSByZXRyaWVzIHdoZW4g
dGhlbiBjYWxsZXIgc2F5cyB0byBub3QKPiA+ID4gPiA+IHJldHJ5Lgo+ID4gPiA+IAo+ID4gPiA+
IFNpbmNlIG1heF90cmllcyBpcyAxIHdpdGggKyt0cmllcywgaXQgc2hvdWxkbid0IHJldHJ5Lgo+
ID4gPiAKPiA+ID4gT0ssIEkgaGF2ZSBtaXNzZWQgdGhhdC4gVGhpcyBpcyBhIHRyaWNreSBjb2Rl
LiBBU1lOQyBtb2RlIHNob3VsZCBiZQo+ID4gPiBjb21wbGV0ZWx5IG9ydGhvZ29uYWwgdG8gdGhl
IHJldHJpZXMgY291bnQuIFRob3NlIGFyZSBkaWZmZXJlbnQgdGhpbmdzLgo+ID4gPiBQYWdlIGFs
bG9jYXRvciBkb2VzIGFuIGV4cGxpY2l0IGJhaWwgb3V0IGJhc2VkIG9uIF9fR0ZQX05PUkVUUlku
IFlvdQo+ID4gPiBzaG91bGQgYmUgZG9pbmcgdGhlIHNhbWUuCj4gPiAKPiA+IEJlZm9yZSBzZW5k
aW5nIG5leHQgcmV2aXNpb24sIGxldCBtZSBjaGVjayB0aGlzIHBhcnQgYWdhaW4uCj4gPiAKPiA+
IEkgd2FudCB0byB1c2UgX19HRlBfTk9SRVRSWSB0byBpbmRpY2F0ZSAib3Bwb3J0dW5pc3RpYy1l
YXN5LXRvLWZhaWwgYXR0ZW1wdCIKPiA+IGFuZCBJIHdhbnQgdG8gdXNlIEFTWU5DIG1pZ3JhdGVf
bW9kZSB0byBoZWxwIHRoZSBnb2FsLgo+ID4gCj4gPiBEbyB5b3Ugc2VlIHRoZSBwcm9ibGVtPwo+
IAo+IE5vLCBhcyBJJ3ZlIHNhaWQuIFRoaXMgaXMgYSBub3JtYWwgTk9SRVRSWSBwb2xpY3kuIEFu
ZCBBU1lOQyBtaWdyYXRpb24KPiBpcyBhIG1lcmUgaW1wbGVtZW50YXRpb24gZGV0YWlsIHlvdSBk
byBub3QgaGF2ZSBib3RoZXIgeW91ciB1c2VycyBhYm91dC4KPiBUaGlzIGlzIHRoZSBzZW1hbnRp
YyB2aWV3LiBGcm9tIHRoZSBpbXBsZW1lbnRhdGlvbiBQT1YgaXQgc2hvdWxkIGJlIHRoZQo+IGdm
cCBtYXNrIHRvIGRyaXZlIGRlY2lzaW9ucyByYXRoZXIgdGhhbiBhIHJhbmRvbSAoQVNZTkMpIGZs
YWcgdG8gY29udHJvbAo+IHJldHJpZXMgYXMgeW91IGRpZCBoZXJlLgoKTWFrZSBzZW5zZS4KCkxl
dCBtZSBjb29rIG5leHQgcmV2aXNpb24uCgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIE1pY2hhbC4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
