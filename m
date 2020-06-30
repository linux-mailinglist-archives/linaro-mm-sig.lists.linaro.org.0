Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B008520F0E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2020 10:50:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7EE46189D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2020 08:50:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C58BB66008; Tue, 30 Jun 2020 08:50:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C9C3618C4;
	Tue, 30 Jun 2020 08:49:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1495861885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:49:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 040E4618C4; Tue, 30 Jun 2020 08:49:47 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 80A7861885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:49:45 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200630084944euoutp0127ea58d85c9725b7749a83502f0b2c72~dRijU1qdG0179301793euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:49:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200630084944euoutp0127ea58d85c9725b7749a83502f0b2c72~dRijU1qdG0179301793euoutp01C
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200630084943eucas1p1397de9f1ccf058b4b07a0ed22ce94e9e~dRiiuUVvF0988409884eucas1p14;
 Tue, 30 Jun 2020 08:49:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A9.87.06318.7ACFAFE5; Tue, 30
 Jun 2020 09:49:43 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200630084943eucas1p175574f4a8f74aab87afea7c6186b0256~dRiiTvzjs1664516645eucas1p1i;
 Tue, 30 Jun 2020 08:49:43 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200630084943eusmtrp242fb2a7e8ecdac333a82831d2b9b16b1~dRiiTHClV2302923029eusmtrp2W;
 Tue, 30 Jun 2020 08:49:43 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-df-5efafca73d42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F3.92.06017.7ACFAFE5; Tue, 30
 Jun 2020 09:49:43 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200630084942eusmtip2a2f37341c3fc97e834a6be1f0bbce556~dRihvINNA1683416834eusmtip2f;
 Tue, 30 Jun 2020 08:49:42 +0000 (GMT)
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <10cb27c9-286a-5ee5-dab1-183939e5b12d@samsung.com>
Date: Tue, 30 Jun 2020 10:49:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG+e/szOPY5DQ131wkDQoTvGHEIcvMgs7HwupDpbn0MCXdZNO0
 vrhKw7yRpZRr2tTM0qll856KWlsmLa+VFVhpd0xFExXRdnZm+e33PO/z530f+BOYZAD3JOKU
 SYxaKY+XCYT8RvOi1bdyeSkyoOOFjMq19vKoR7fqcGq1MR+jhv9MCagH1c94lKEzmJob/sSj
 6sdf49RQq15AdU1P4KFC2lhiRHT7vIFPN81/xOmxbAuPfnw3jX6/Mo7RN95WIrptVCug80xV
 iJ6t33JYeEK4J4aJjzvHqP1DooSxhWN7E0elqYsFmU5a1LwxCzkTQO6EK8ZpQRYSEhLyPoKb
 +XrEiTkE33L6HWIWwexyhdPak4WyBpwbVCIYLP3pEFMIRoZq7ClX8ihM/f6NsexGZiB4niti
 Qxj5C8F46bQ9JCADIWsyS8CymAyB6oFLduaT22DAqOex7E5GQF6FwZHZAL1FE3yWnW35X+ld
 OMsY6QVNk3qMYw94N3GHx5066QTF7eEcH4SrEyUO3xV+WkyOOpthtYXNC218GcEnK9uAFTkI
 hi7dQlwqGD5Yl2xXELYNO6Cu1Z+z90Ph5y92G0gXeDu5gbvBBa433sQ4WwyZVyRcejvoLLX/
 1nb1D2LXkEy3rpluXRvduja6/3sNiF+FPJhkTYKC0QQpmRQ/jTxBk6xU+EWrEuqR7aP1rVj+
 NKOO5TPdiCSQTCSOsi5GSnD5Oc35hG4EBCZzE4e97IuUiGPk5y8watVpdXI8o+lGUoIv8xAH
 lf2IkJAKeRJzlmESGfXalEc4e2pRWpiXtABvjxjdKi3/mvdVZZ4ReZuaL95OVI0caDtWtTs7
 4Iip501Rz8niQ0/HFgqb0h9ag2rdzU98+hUrY98H+LteZZi1we3Gqs5T5nvS9FStZWtQp/vx
 jJnvu/2hJu1wX7ikxBjq7bqv0m1bq+f9+dXS8pSWosIC0aZO3+iGO5iMr4mVB/pgao38Lz1J
 +/pkAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xe7rL//yKM3h9hsei99xJJouNM9az
 WvzfNpHZ4srX92wWK1cfZbJYsN/a4suVh0wWmx5fY7W4vGsOm8XBD09YHbg81sxbw+ix99sC
 Fo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kFcEXp2RTll5akKmTk
 F5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZUy9b1twU7ri55QO9gbG
 HWJdjJwcEgImEj8WbWXtYuTiEBJYyihxbNIsFoiEjMTJaQ2sELawxJ9rXWwgtpDAW0aJ1o88
 ILawQIjE+3fvmEGaRQRaGSWOPnjHDuIwC7xmlHh25QwzxNiJjBL/H+5iBGlhEzCU6HoLMYpX
 wE5i9cUmMJtFQFXi4po5TCC2qECsxLd7W6BqBCVOznwCdhInUP3rloNgJzELmEnM2/yQGcKW
 l9j+dg6ULS5x68l8pgmMQrOQtM9C0jILScssJC0LGFlWMYqklhbnpucWG+kVJ+YWl+al6yXn
 525iBMbwtmM/t+xg7HoXfIhRgINRiYc34dzPOCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlal
 FuXHF5XmpBYfYjQFem4is5Rocj4wveSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5N
 LUgtgulj4uCUamAUfRmw9XOo4GLf7Q/Xn/zXtjW+izNDsrLg3i7R7dt0X6pnbtTSOPDt68xp
 C5/MY0111xBflc/Mw/VH+cqRzrn3hTTKT7t5ZTisSRCr51VfkysVF1Iv5D3jVbrDo2Ovr0+L
 /DRZl71XcPLl9C0adaI8lfvu8ywsFj87adqa3fkJjx2Yp/vlxq9VYinOSDTUYi4qTgQAM+BS
 v/cCAAA=
X-CMS-MailID: 20200630084943eucas1p175574f4a8f74aab87afea7c6186b0256
X-Msg-Generator: CA
X-RootMTR: 20200619103652eucas1p203d684adff0faa672ff5c8d383b52f23
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103652eucas1p203d684adff0faa672ff5c8d383b52f23
References: <CGME20200619103652eucas1p203d684adff0faa672ff5c8d383b52f23@eucas1p2.samsung.com>
 <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v7 00/36] DRM: fix struct sg_table nents
 vs. orig_nents misuse
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

SGkgQWxsLAoKT24gMTkuMDYuMjAyMCAxMjozNiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBE
dXJpbmcgdGhlIEV4eW5vcyBEUk0gR0VNIHJld29yayBhbmQgZml4aW5nIHRoZSBpc3N1ZXMgaW4g
dGhlLgo+IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgZnVuY3Rpb24gWzFdIEkn
dmUgbm90aWNlZCB0aGF0IG1vc3QKPiBkcml2ZXJzIGluIERSTSBmcmFtZXdvcmsgaW5jb3JyZWN0
bHkgdXNlIG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMgb2YKPiB0aGUgc3RydWN0IHNnX3Rh
YmxlLgo+Cj4gSW4gY2FzZSBvZiB0aGUgbW9zdCBETUEtbWFwcGluZyBpbXBsZW1lbnRhdGlvbnMg
ZXhjaGFuZ2luZyB0aG9zZSB0d28KPiBlbnRyaWVzIG9yIHVzaW5nIG5lbnRzIGZvciBhbGwgbG9v
cHMgb24gdGhlIHNjYXR0ZXJsaXN0IGlzIGhhcm1sZXNzLAo+IGJlY2F1c2UgdGhleSBib3RoIGhh
dmUgdGhlIHNhbWUgdmFsdWUuIFRoZXJlIGV4aXN0cyBob3dldmVyIGEgRE1BLW1hcHBpbmcKPiBp
bXBsZW1lbnRhdGlvbnMsIGZvciB3aGljaCBzdWNoIGluY29ycmVjdCB1c2FnZSBicmVha3MgdGhp
bmdzLiBUaGUgbmVudHMKPiByZXR1cm5lZCBieSBkbWFfbWFwX3NnKCkgbWlnaHQgYmUgbG93ZXIg
dGhhbiB0aGUgbmVudHMgcGFzc2VkIGFzIGl0cwo+IHBhcmFtZXRlciBhbmQgdGhpcyBpcyBwZXJm
ZWN0bHkgZmluZS4gRE1BIGZyYW1ld29yayBvciBJT01NVSBpcyBhbGxvd2VkCj4gdG8gam9pbiBj
b25zZWN1dGl2ZSBjaHVua3Mgd2hpbGUgbWFwcGluZyBpZiBzdWNoIG9wZXJhdGlvbiBpcyBzdXBw
b3J0ZWQKPiBieSB0aGUgdW5kZXJseWluZyBIVyAoYnVzLCBicmlkZ2UsIElPTU1VLCBldGMpLiBF
eGFtcGxlIG9mIHRoZSBjYXNlCj4gd2hlcmUgZG1hX21hcF9zZygpIG1pZ2h0IHJldHVybiAxICdE
TUEnIGNodW5rIGZvciB0aGUgNCAncGh5c2ljYWwnIHBhZ2VzCj4gaXMgZGVzY3JpYmVkIGhlcmUg
WzJdCj4KPiBUaGUgRE1BLW1hcHBpbmcgZnJhbWV3b3JrIGRvY3VtZW50YXRpb24gWzNdIHN0YXRl
cyB0aGF0IGRtYV9tYXBfc2coKQo+IHJldHVybnMgdGhlIG51bWVyIG9mIHRoZSBjcmVhdGVkIGVu
dHJpZXMgaW4gdGhlIERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQg
Y2FsbHMgdG8gZG1hX3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1fSBhbmQKPiBkbWFfdW5tYXBfc2cg
bXVzdCBiZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2Vk
IHRvCj4gZG1hX21hcF9zZy4gVGhlIGNvbW1vbiBwYXR0ZXJuIGluIERSTSBkcml2ZXJzIHdlcmUg
dG8gYXNzaWduIHRoZQo+IGRtYV9tYXBfc2coKSByZXR1cm4gdmFsdWUgdG8gc2dfdGFibGUtPm5l
bnRzIGFuZCB1c2UgdGhhdCB2YWx1ZSBmb3IKPiB0aGUgc3Vic2VxdWVudCBjYWxscyB0byBkbWFf
c3luY19zZ18qIG9yIGRtYV91bm1hcF9zZyBmdW5jdGlvbnMuIEFsc28KPiB0aGUgY29kZSBpdGVy
YXRlZCBvdmVyIG5lbnRzIHRpbWVzIHRvIGFjY2VzcyB0aGUgcGFnZXMgc3RvcmVkIGluIHRoZQo+
IHByb2Nlc3NlZCBzY2F0dGVybGlzdCwgd2hpbGUgaXQgc2hvdWxkIHVzZSBvcmlnX25lbnRzIGFz
IHRoZSBudW1lciBvZgo+IHRoZSBwYWdlIGVudHJpZXMuCj4KPiBJJ3ZlIHRyaWVkIHRvIGlkZW50
aWZ5IGFsbCBzdWNoIGluY29ycmVjdCB1c2FnZSBvZiBzZ190YWJsZS0+bmVudHMgYW5kCj4gdGhp
cyBpcyBhIHJlc3VsdCBvZiBteSByZXNlYXJjaC4gSXQgbG9va3MgdGhhdCB0aGUgaW5jb3JyZWN0
IHBhdHRlcm4gaGFzCj4gYmVlbiBjb3BpZWQgb3ZlciB0aGUgbWFueSBkcml2ZXJzIG1haW5seSBp
biB0aGUgRFJNIHN1YnN5c3RlbS4gVG9vIGJhZCBpbgo+IG1vc3QgY2FzZXMgaXQgZXZlbiB3b3Jr
ZWQgY29ycmVjdGx5IGlmIHRoZSBzeXN0ZW0gdXNlZCBhIHNpbXBsZSwgbGluZWFyCj4gRE1BLW1h
cHBpbmcgaW1wbGVtZW50YXRpb24sIGZvciB3aGljaCBzd2FwcGluZyBuZW50cyBhbmQgb3JpZ19u
ZW50cwo+IGRvZXNuJ3QgbWFrZSBhbnkgZGlmZmVyZW5jZS4gVG8gYXZvaWQgc2ltaWxhciBpc3N1
ZXMgaW4gdGhlIGZ1dHVyZSwgSSd2ZQo+IGludHJvZHVjZWQgYSBjb21tb24gd3JhcHBlcnMgZm9y
IERNQS1tYXBwaW5nIGNhbGxzLCB3aGljaCBvcGVyYXRlIGRpcmVjdGx5Cj4gb24gdGhlIHNnX3Rh
YmxlIG9iamVjdHMuIEkndmUgYWxzbyBhZGRlZCB3cmFwcGVycyBmb3IgaXRlcmF0aW5nIG92ZXIg
dGhlCj4gc2NhdHRlcmxpc3RzIHN0b3JlZCBpbiB0aGUgc2dfdGFibGUgb2JqZWN0cyBhbmQgYXBw
bGllZCB0aGVtIHdoZXJlCj4gcG9zc2libGUuIFRoaXMsIHRvZ2V0aGVyIHdpdGggc29tZSBjb21t
b24gRFJNIHByaW1lIGhlbHBlcnMsIGFsbG93ZWQgbWUKPiB0byBhbG1vc3QgZ2V0IHJpZCBvZiBh
bGwgbmVudHMvb3JpZ19uZW50cyB1c2FnZSBpbiB0aGUgZHJpdmVycy4gSSBob3BlCj4gdGhhdCBz
dWNoIGNoYW5nZSBtYWtlcyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cgYW5kIGNv
cHkvcGFzdGUKPiBzYWZlLgo+Cj4gVGhlIGJpZ2dlc3QgVE9ETyBpcyBEUk0vaTkxNSBkcml2ZXIg
YW5kIEkgZG9uJ3QgZmVlbCBicmF2ZSBlbm91Z2ggdG8gZml4Cj4gaXQgZnVsbHkuIFRoZSBkcml2
ZXIgY3JlYXRpdmVseSB1c2VzIHNnX3RhYmxlLT5vcmlnX25lbnRzIHRvIHN0b3JlIHRoZQo+IHNp
emUgb2YgdGhlIGFsbG9jYXRlIHNjYXR0ZXJsaXN0IGFuZCBpZ25vcmVzIHRoZSBudW1iZXIgb2Yg
dGhlIGVudHJpZXMKPiByZXR1cm5lZCBieSBkbWFfbWFwX3NnIGZ1bmN0aW9uLiBJbiB0aGlzIHBh
dGNoc2V0IEkgb25seSBmaXhlZCB0aGUKPiBzZ190YWJsZSBvYmplY3RzIGV4cG9ydGVkIGJ5IGRt
YWJ1ZiByZWxhdGVkIGZ1bmN0aW9ucy4gSSBob3BlIHRoYXQgSQo+IGRpZG4ndCBicmVhayBhbnl0
aGluZyB0aGVyZS4KPgo+IFBhdGNoZXMgYXJlIGJhc2VkIG9uIHRvcCBvZiBMaW51eCBuZXh0LTIw
MjAwNjE4LiBUaGUgcmVxdWlyZWQgY2hhbmdlcyB0bwo+IERNQS1tYXBwaW5nIGZyYW1ld29yayBo
YXMgYmVlbiBhbHJlYWR5IG1lcmdlZCB0byB2NS44LXJjMS4KPgo+IElmIHBvc3NpYmxlIEkgd291
bGQgbGlrZSBhc2sgZm9yIG1lcmdpbmcgbW9zdCBvZiB0aGUgcGF0Y2hlcyB2aWEgRFJNCj4gdHJl
ZS4KCkRhdmlkICYgRGFuaWVsOiBob3cgd291bGQgeW91IGxpa2UgdG8gbWVyZ2UgdGhvc2UgcGF0
Y2hlcz8gVGhleSBnb3QgCnF1aXRlIGEgbG90IGFja3MgYW5kIHNvbWUgb2YgdGhlbSBoYXZlIGRl
cGVuZGVuY2llcyBvbiB0aGUgRFJNIGNvcmUuIEkgCndvdWxkIHJlYWxseSBsaWtlIHRvIGdldCBw
YXRjaGVzIDEtMjggbWVyZ2VkIHZpYSBEUk0gKG1pc2M/KSB0cmVlLiBEbyAKeW91IHdhbnQgbWUg
dG8gcHJlcGFyZSBhIGJyYW5jaCBhbmQgc2VuZCBhIHB1bGwgcmVxdWVzdD8KCkJlc3QgcmVnYXJk
cwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
