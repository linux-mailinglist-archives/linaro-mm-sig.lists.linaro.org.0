Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 953DE305AC7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 13:07:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF9C866757
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 12:07:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0AF36675C; Wed, 27 Jan 2021 12:07:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 274406674A;
	Wed, 27 Jan 2021 12:06:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CE35D66538
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 12:06:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BD47866008; Wed, 27 Jan 2021 12:06:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 64CE566008
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 12:06:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95D7920784;
 Wed, 27 Jan 2021 12:06:23 +0000 (UTC)
Date: Wed, 27 Jan 2021 13:06:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Message-ID: <YBFXPbePURupbe+y@kroah.com>
References: <20210126204240.418297-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126204240.418297-1-hridya@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, surenb@google.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com, john.stultz@linaro.org,
 kernel-team@android.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMTI6NDI6MzZQTSAtMDgwMCwgSHJpZHlhIFZhbHNhcmFq
dSB3cm90ZToKPiBUaGlzIHBhdGNoIGFsbG93cyBzdGF0aXN0aWNzIHRvIGJlIGVuYWJsZWQgZm9y
IGVhY2ggRE1BLUJVRiBpbgo+IHN5c2ZzIGJ5IGVuYWJsaW5nIHRoZSBjb25maWcgQ09ORklHX0RN
QUJVRl9TWVNGU19TVEFUUy4KPiAKPiBUaGUgZm9sbG93aW5nIHN0YXRzIHdpbGwgYmUgZXhwb3Nl
ZCBieSB0aGUgaW50ZXJmYWNlOgo+IAo+IC9zeXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9k
ZV9udW1iZXI+L2V4cG9ydGVyX25hbWUKPiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycy88aW5v
ZGVfbnVtYmVyPi9zaXplCj4gL3N5cy9rZXJuZWwvZG1hYnVmL2J1ZmZlcnMvPGlub2RlX251bWJl
cj4vYXR0YWNobWVudHMvPGF0dGFjaF91aWQ+L2RldmljZQo+IC9zeXMva2VybmVsL2RtYWJ1Zi9i
dWZmZXJzLzxpbm9kZV9udW1iZXI+L2F0dGFjaG1lbnRzLzxhdHRhY2hfdWlkPi9tYXBfY291bnRl
cgo+IAo+IFRoZSBpbm9kZV9udW1iZXIgaXMgdW5pcXVlIGZvciBlYWNoIERNQS1CVUYgYW5kIHdh
cyBhZGRlZCBlYXJsaWVyIFsxXQo+IGluIG9yZGVyIHRvIGFsbG93IHVzZXJzcGFjZSB0byB0cmFj
ayBETUEtQlVGIHVzYWdlIGFjcm9zcyBkaWZmZXJlbnQKPiBwcm9jZXNzZXMuCj4gCj4gQ3VycmVu
dGx5LCB0aGlzIGluZm9ybWF0aW9uIGlzIGV4cG9zZWQgaW4KPiAvc3lzL2tlcm5lbC9kZWJ1Zy9k
bWFfYnVmL2J1ZmluZm8uCj4gSG93ZXZlciwgc2luY2UgZGVidWdmcyBpcyBjb25zaWRlcmVkIHVu
c2FmZSB0byBiZSBtb3VudGVkIGluIHByb2R1Y3Rpb24sCj4gaXQgaXMgYmVpbmcgZHVwbGljYXRl
ZCBpbiBzeXNmcy4KPiAKPiBUaGlzIGluZm9ybWF0aW9uIHdpbGwgYmUgdXNlZCB0byBkZXJpdmUg
RE1BLUJVRgo+IHBlci1leHBvcnRlciBzdGF0cyBhbmQgcGVyLWRldmljZSB1c2FnZSBzdGF0cyBm
b3IgQW5kcm9pZCBCdWcgcmVwb3J0cy4KPiBUaGUgY29ycmVzcG9uZGluZyB1c2Vyc3BhY2UgY2hh
bmdlcyBjYW4gYmUgZm91bmQgYXQgWzJdLgo+IFRlbGVtZXRyeSB0b29scyB3aWxsIGFsc28gY2Fw
dHVyZSB0aGlzIGluZm9ybWF0aW9uKGFsb25nIHdpdGggb3RoZXIKPiBtZW1vcnkgbWV0cmljcykg
cGVyaW9kaWNhbGx5IGFzIHdlbGwgYXMgb24gaW1wb3J0YW50IGV2ZW50cyBsaWtlIGEKPiBmb3Jl
Z3JvdW5kIGFwcCBraWxsICh3aGljaCBtaWdodCBoYXZlIGJlZW4gdHJpZ2dlcmVkIGJ5IExvdyBN
ZW1vcnkKPiBLaWxsZXIpLiBJdCB3aWxsIGFsc28gY29udHJpYnV0ZSB0byBwcm92aWRlIGEgc25h
cHNob3Qgb2YgdGhlIHN5c3RlbQo+IG1lbW9yeSB1c2FnZSBvbiBvdGhlciBldmVudHMgc3VjaCBh
cyBPT00ga2lsbHMgYW5kIEFwcGxpY2F0aW9uIE5vdAo+IFJlc3BvbmRpbmcgZXZlbnRzLgo+IAo+
IEEgc2hlbGwgc2NyaXB0IHRoYXQgY2FuIGJlIHJ1biBvbiBhIGNsYXNzaWMgTGludXggZW52aXJv
bm1lbnQgdG8gcmVhZAo+IG91dCB0aGUgRE1BLUJVRiBzdGF0aXN0aWNzIGNhbiBiZSBmb3VuZCBh
dCBbM10oc3VnZ2VzdGVkIGJ5IEpvaG4KPiBTdHVsdHopLgo+IAo+IFRoZSBwYXRjaCBjb250YWlu
cyB0aGUgZm9sbG93aW5nIGltcHJvdmVtZW50cyBvdmVyIHRoZSBwcmV2aW91cyB2ZXJzaW9uOgo+
IDEpIEVhY2ggYXR0YWNobWVudCBpcyByZXByZXNlbnRlZCBieSBpdHMgb3duIGRpcmVjdG9yeSB0
byBhbGxvdyBjcmVhdGluZwo+IGEgc3ltbGluayB0byB0aGUgaW1wb3J0aW5nIGRldmljZSBhbmQg
dG8gYWxzbyBwcm92aWRlIHJvb20gZm9yIGZ1dHVyZQo+IGV4cGFuc2lvbi4KPiAyKSBUaGUgbnVt
YmVyIG9mIGRpc3RpbmN0IG1hcHBpbmdzIG9mIGVhY2ggYXR0YWNobWVudCBpcyBleHBvc2VkIGlu
IGEKPiBzZXBhcmF0ZSBmaWxlLgo+IDMpIFRoZSBwZXItYnVmZmVyIHN0YXRpc3RpY3MgYXJlIG5v
dyBpbiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycwo+IGlub3JkZXIgdG8gbWFrZSB0aGUgaW50
ZXJmYWNlIGV4cGFuZGFibGUgaW4gZnV0dXJlLgo+IAo+IEFsbCBvZiB0aGUgaW1wcm92ZW1lbnRz
IGFib3ZlIGFyZSBiYXNlZCBvbiBzdWdnZXN0aW9ucy9mZWVkYmFjayBmcm9tCj4gRGFuaWVsIFZl
dHRlciBhbmQgQ2hyaXN0aWFuIEvDtm5pZy4KPiAKPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3BhdGNod29yay9wYXRjaC8xMDg4NzkxLwo+IFsyXTogaHR0cHM6Ly9hbmRyb2lkLXJldmll
dy5nb29nbGVzb3VyY2UuY29tL3EvdG9waWM6JTIyZG1hYnVmLXN5c2ZzJTIyKyhzdGF0dXM6b3Bl
biUyME9SJTIwc3RhdHVzOm1lcmdlZCkKPiBbM106IGh0dHBzOi8vYW5kcm9pZC1yZXZpZXcuZ29v
Z2xlc291cmNlLmNvbS9jL3BsYXRmb3JtL3N5c3RlbS9tZW1vcnkvbGlibWVtaW5mby8rLzE1NDk3
MzQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNv
bT4KPiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gLS0t
Cj4gQ2hhbmdlcyBpbiB2MzoKPiBGaXggYSB3YXJuaW5nIHJlcG9ydGVkIGJ5IHRoZSBrZXJuZWwg
dGVzdCByb2JvdC4KPiAKPiBDaGFuZ2VzIGluIHYyOgo+IC1Nb3ZlIHN0YXRpc3RpY3MgdG8gL3N5
cy9rZXJuZWwvZG1hYnVmL2J1ZmZlcnMgaW4gb2RlciB0byBhbGxvdyBhZGRpdGlvbgo+IG9mIG90
aGVyIERNQS1CVUYtcmVsYXRlZCBzeXNmcyBzdGF0cyBpbiBmdXR1cmUuIEJhc2VkIG9uIGZlZWRi
YWNrIGZyb20KPiBEYW5pZWwgVmV0dGVyLgo+IC1FYWNoIGF0dGFjaG1lbnQgaGFzIGl0cyBvd24g
ZGlyZWN0b3J5IHRvIHJlcHJlc2VudCBhdHRhY2hpbmcgZGV2aWNlcyBhcwo+IHN5bWxpbmtzIGFu
ZCB0byBpbnRyb2R1Y2UgbWFwX2NvdW50IGFzIGEgc2VwYXJhdGUgZmlsZS4gQmFzZWQgb24KPiBm
ZWVkYmFjayBmcm9tIERhbmllbCBWZXR0ZXIgYW5kIENocmlzdGlhbiBLw7ZuaWcuIFRoYW5rIHlv
dSBib3RoIQo+IC1Db21taXQgbWVzc2FnZXMgdXBkYXRlZCB0byBwb2ludCB0byB1c2Vyc3BhY2Ug
Y29kZSBpbiBBT1NQIHRoYXQgd2lsbAo+IHJlYWQgdGhlIERNQS1CVUYgc3lzZnMgc3RhdHMuCj4g
Cj4gCj4gIC4uLi9BQkkvdGVzdGluZy9zeXNmcy1rZXJuZWwtZG1hYnVmLWJ1ZmZlcnMgICB8ICA1
MiArKysrCj4gIGRyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8
ICAxMSArCj4gIGRyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgICAgICAgICB8
IDI4NSArKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMt
c3RhdHMuaCAgICAgICAgIHwgIDYyICsrKysKPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAg
ICAgICAgICAgICAgICAgICAgIHwgIDM3ICsrKwo+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAg
ICAgICAgICAgICAgICAgICAgICAgfCAgMjAgKysKPiAgNyBmaWxlcyBjaGFuZ2VkLCA0NjggaW5z
ZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGlu
Zy9zeXNmcy1rZXJuZWwtZG1hYnVmLWJ1ZmZlcnMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmgKCkkgZG9uJ3Qga25vdyB0aGUgZG1h
LWJ1ZiBjb2RlIGF0IGFsbCwgYnV0IGZyb20gYSBzeXNmcy9rb2JqZWN0IHBvaW50IG9mCnZpZXcs
IHRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBtZToKClJldmlld2VkLWJ5OiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
