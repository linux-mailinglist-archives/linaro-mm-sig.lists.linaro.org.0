Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF16428D10
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Oct 2021 14:32:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74A9160A64
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Oct 2021 12:32:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5221D60FFA; Mon, 11 Oct 2021 12:32:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0E7460A5F;
	Mon, 11 Oct 2021 12:32:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E7CBE60902
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Oct 2021 12:32:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E382660A5F; Mon, 11 Oct 2021 12:32:14 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by lists.linaro.org (Postfix) with ESMTPS id A8F4F60902
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Oct 2021 12:32:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="290355749"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="290355749"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 05:32:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="485882647"
Received: from aquine-mobl.ger.corp.intel.com (HELO [10.213.251.140])
 ([10.213.251.140])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 05:32:08 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211008095007.972693-1-tvrtko.ursulin@linux.intel.com>
 <9eca89ab-f954-8b2a-7af5-b4a63b90eed0@amd.com>
 <67f413c4-b654-c7ea-bc4f-6b42418c7486@linux.intel.com>
 <85489b72-6001-98d8-d66a-395e05cd3d01@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8f93439a-739d-835d-95e9-59ffb7380a27@linux.intel.com>
Date: Mon, 11 Oct 2021 13:32:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <85489b72-6001-98d8-d66a-395e05cd3d01@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: Fix dma_resv_get_fences and
 dma_resv_copy_fences after conversion
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDA4LzEwLzIwMjEgMTM6MTksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMDguMTAu
MjEgdW0gMTI6NDkgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMDgvMTAvMjAyMSAx
MToyMSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IEFtIDA4LjEwLjIxIHVtIDExOjUwIHNj
aHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4+Pgo+Pj4+IENhY2hlIHRoZSBjb3VudCBvZiBzaGFyZWQgZmVu
Y2VzIGluIHRoZSBpdGVyYXRvciB0byBhdm9pZCBkZXJlZmVyZW5jaW5nCj4+Pj4gdGhlIGRtYV9y
ZXN2X29iamVjdCBvdXRzaWRlIHRoZSBSQ1UgcHJvdGVjdGlvbi4gT3RoZXJ3aXNlIGl0ZXJhdG9y
IAo+Pj4+IGFuZCBpdHMKPj4+PiB1c2VycyBjYW4gb2JzZXJ2ZSBhbiBpbmNvc2lzdGVudCBzdGF0
ZSB3aGljaCBtYWtlcyBpdCBpbXBvc3NpYmxlIHRvIHVzZQo+Pj4+IHNhZmVseS4KPj4+Cj4+PiBB
aCwgb2YgY291cnNlISBJJ3ZlIGJlZW4gc3RhcmluZyBhdCB0aGUgY29kZSB0aGUgd2hvbGUgbW9y
bmluZyBhbmQgCj4+PiBjb3VsZG4ndCBzZWUgaXQuCj4+Pgo+Pj4gR29pbmcgdG8gd3JpdGUgYSB0
ZXN0Y2FzZSB0byBjb3ZlciB0aGF0Lgo+Pj4KPj4+PiBTdWNoIGFzOgo+Pj4+Cj4+Pj4gPDY+IFsx
ODcuNTE3MDQxXSBbSUdUXSBnZW1fc3luYzogZXhlY3V0aW5nCj4+Pj4gPDc+IFsxODcuNTM2MzQz
XSBpOTE1IDAwMDA6MDA6MDIuMDogCj4+Pj4gW2RybTppOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9p
b2N0bCBbaTkxNV1dIEhXIGNvbnRleHQgMSBjcmVhdGVkCj4+Pj4gPDc+IFsxODcuNTM2NzkzXSBp
OTE1IDAwMDA6MDA6MDIuMDogCj4+Pj4gW2RybTppOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9pb2N0
bCBbaTkxNV1dIEhXIGNvbnRleHQgMSBjcmVhdGVkCj4+Pj4gPDY+IFsxODcuNTUxMjM1XSBbSUdU
XSBnZW1fc3luYzogc3RhcnRpbmcgc3VidGVzdCBiYXNpYy1tYW55LWVhY2gKPj4+PiA8MT4gWzE4
OC45MzU0NjJdIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczog
Cj4+Pj4gMDAwMDAwMDAwMDAwMDAxMAo+Pj4+IDwxPiBbMTg4LjkzNTQ4NV0gI1BGOiBzdXBlcnZp
c29yIHdyaXRlIGFjY2VzcyBpbiBrZXJuZWwgbW9kZQo+Pj4+IDwxPiBbMTg4LjkzNTQ5NV0gI1BG
OiBlcnJvcl9jb2RlKDB4MDAwMikgLSBub3QtcHJlc2VudCBwYWdlCj4+Pj4gPDY+IFsxODguOTM1
NTA0XSBQR0QgMCBQNEQgMAo+Pj4+IDw0PiBbMTg4LjkzNTUxMl0gT29wczogMDAwMiBbIzFdIFBS
RUVNUFQgU01QIE5PUFRJCj4+Pj4gPDQ+IFsxODguOTM1NTIxXSBDUFU6IDIgUElEOiAxNDY3IENv
bW06IGdlbV9zeW5jIE5vdCB0YWludGVkIAo+Pj4+IDUuMTUuMC1yYzQtQ0ktUGF0Y2h3b3JrXzIx
MjY0KyAjMQo+Pj4+IDw0PiBbMTg4LjkzNTUzNV0gSGFyZHdhcmUgbmFtZTrCoCAvTlVDNkNBWUIs
IEJJT1MgCj4+Pj4gQVlBUExDRUwuODZBLjAwNDkuMjAxOC4wNTA4LjEzNTYgMDUvMDgvMjAxOAo+
Pj4+IDw0PiBbMTg4LjkzNTU0Nl0gUklQOiAwMDEwOmRtYV9yZXN2X2dldF9mZW5jZXMrMHgxMTYv
MHgyZDAKPj4+PiA8ND4gWzE4OC45MzU1NjBdIENvZGU6IDEwIDg1IGMwIDdmIGM5IGJlIDAzIDAw
IDAwIDAwIGU4IDE1IDhiIGRmIGZmIAo+Pj4+IGViIGJkIGU4IDhlIGM2IGZmIGZmIGViIGI2IDQx
IDhiIDA0IDI0IDQ5IDhiIDU1IDAwIDQ4IDg5IGU3IDhkIDQ4IDAxIAo+Pj4+IDQxIDg5IDBjIDI0
IDw0Yz4gODkgMzQgYzIgZTggNDEgZjIgZmYgZmYgNDkgODkgYzYgNDggODUgYzAgNzUgOGMgNDgg
Cj4+Pj4gOGIgNDQgMjQgMTAKPj4+PiA8ND4gWzE4OC45MzU1ODNdIFJTUDogMDAxODpmZmZmYzkw
MDAxMWRiY2M4IEVGTEFHUzogMDAwMTAyMDIKPj4+PiA8ND4gWzE4OC45MzU1OTNdIFJBWDogMDAw
MDAwMDAwMDAwMDAwMCBSQlg6IDAwMDAwMDAwZmZmZmZmZmYgUkNYOiAKPj4+PiAwMDAwMDAwMDAw
MDAwMDAxCj4+Pj4gPDQ+IFsxODguOTM1NjAzXSBSRFg6IDAwMDAwMDAwMDAwMDAwMTAgUlNJOiBm
ZmZmZmZmZjgyMmUzNDNjIFJESTogCj4+Pj4gZmZmZmM5MDAwMTFkYmNjOAo+Pj4+IDw0PiBbMTg4
LjkzNTYxM10gUkJQOiBmZmZmYzkwMDAxMWRiZDQ4IFIwODogZmZmZjg4ODEyZDI1NWJiOCBSMDk6
IAo+Pj4+IDAwMDAwMDAwZmZmZmZmZmUKPj4+PiA8ND4gWzE4OC45MzU2MjNdIFIxMDogMDAwMDAw
MDAwMDAwMDAwMSBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiAKPj4+PiBmZmZmYzkwMDAxMWRi
ZDQ0Cj4+Pj4gPDQ+IFsxODguOTM1NjMzXSBSMTM6IGZmZmZjOTAwMDExZGJkNTAgUjE0OiBmZmZm
ODg4MTEzZDI5Y2MwIFIxNTogCj4+Pj4gMDAwMDAwMDAwMDAwMDAwMAo+Pj4+IDw0PiBbMTg4Ljkz
NTY0M10gRlM6wqAgMDAwMDdmNjhkMTdlOTcwMCgwMDAwKSAKPj4+PiBHUzpmZmZmODg4Mjc3OTAw
MDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPj4+PiA8ND4gWzE4OC45MzU2NTVdIENT
OsKgIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4+Pj4gPDQ+
IFsxODguOTM1NjY1XSBDUjI6IDAwMDAwMDAwMDAwMDAwMTAgQ1IzOiAwMDAwMDAwMTJkMGE0MDAw
IENSNDogCj4+Pj4gMDAwMDAwMDAwMDM1MDZlMAo+Pj4+IDw0PiBbMTg4LjkzNTY3Nl0gQ2FsbCBU
cmFjZToKPj4+PiA8ND4gWzE4OC45MzU2ODVdwqAgaTkxNV9nZW1fb2JqZWN0X3dhaXQrMHgxZmYv
MHg0MTAgW2k5MTVdCj4+Pj4gPDQ+IFsxODguOTM1OTg4XcKgIGk5MTVfZ2VtX3dhaXRfaW9jdGwr
MHhmMi8weDJhMCBbaTkxNV0KPj4+PiA8ND4gWzE4OC45MzYyNzJdwqAgPyBpOTE1X2dlbV9vYmpl
Y3Rfd2FpdCsweDQxMC8weDQxMCBbaTkxNV0KPj4+PiA8ND4gWzE4OC45MzY1MzNdwqAgZHJtX2lv
Y3RsX2tlcm5lbCsweGFlLzB4MTQwCj4+Pj4gPDQ+IFsxODguOTM2NTQ2XcKgIGRybV9pb2N0bCsw
eDIwMS8weDNkMAo+Pj4+IDw0PiBbMTg4LjkzNjU1NV3CoCA/IGk5MTVfZ2VtX29iamVjdF93YWl0
KzB4NDEwLzB4NDEwIFtpOTE1XQo+Pj4+IDw0PiBbMTg4LjkzNjgyMF3CoCA/IF9fZmdldF9maWxl
cysweGMyLzB4MWMwCj4+Pj4gPDQ+IFsxODguOTM2ODMwXcKgID8gX19mZ2V0X2ZpbGVzKzB4ZGEv
MHgxYzAKPj4+PiA8ND4gWzE4OC45MzY4MzldwqAgX194NjRfc3lzX2lvY3RsKzB4NmQvMHhhMAo+
Pj4+IDw0PiBbMTg4LjkzNjg0OF3CoCBkb19zeXNjYWxsXzY0KzB4M2EvMHhiMAo+Pj4+IDw0PiBb
MTg4LjkzNjg1OV0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhZQo+Pj4+
Cj4+Pj4gSWYgdGhlIHNoYXJlZCBvYmplY3QgaGFzIGNoYW5nZWQgZHVyaW5nIHRoZSBSQ1UgdW5s
b2NrZWQgcGVyaW9kCj4+Pj4gY2FsbGVycyB3aWxsIGNvcnJlY3RseSBoYW5kbGUgdGhlIHJlc3Rh
cnQgb24gdGhlIG5leHQgaXRlcmF0aW9uLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+PiBGaXhlczogOTY2MDFlOGE0
NzU1ICgiZG1hLWJ1ZjogdXNlIG5ldyBpdGVyYXRvciBpbiAKPj4+PiBkbWFfcmVzdl9jb3B5X2Zl
bmNlcyIpCj4+Pj4gRml4ZXM6IGQzYzgwNjk4YzlmNSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0
b3IgaW4gCj4+Pj4gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyB2MyIpCj4+Pj4gQ2xvc2VzOiAKPj4+PiBo
dHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMl
M0ElMkYlMkZnaXRsYWIuZnJlZWRlc2t0b3Aub3JnJTJGZHJtJTJGaW50ZWwlMkYtJTJGaXNzdWVz
JTJGNDI3NCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0Nj
MjJmZWVhMDZhM2Y0Mjg1Y2RhYzA4ZDk4YTQ5NTk4NCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgy
ZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2OTI4NzA4MDUxNjA5MDklN0NVbmtub3duJTdDVFdGcGJH
WnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3
aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCZhbXA7c2RhdGE9Nm9QUjMwc1duSmUwNEk0R2xoaHZKV1gz
UXZ3S0ZJT01XMXVPSXlXWkZPRSUzRCZhbXA7cmVzZXJ2ZWQ9MCAKPj4+Pgo+Pj4+IENjOiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Pj4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4+Pj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3Vt
aXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
Zwo+Pj4+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4gQ2M6IGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+Pj4KPj4+IE1heWJlIHdlIHNob3VsZCByZW1vdmUg
Y3Vyc29yLT5mZW5jZXMgYWx0b2dldGhlciwgYnV0IGVpdGhlciB3YXkgdGhlIAo+Pj4gcGF0Y2gg
aXMgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KPj4+Cj4+PiBQbGVhc2UgcHVzaCB0byBkcm0tbWlzYy1uZXh0IEFTQVAuCj4+Cj4+IE5vdCBz
dXJlIEkgY2FuIG9yIGlmIG15IHB1c2ggcGVybWlzc2lvbnMgYXJlIGxpbWl0ZWQgdG8gSW50ZWwg
Cj4+IGJyYW5jaGVzLiBJIGNhbiB0cnkgb25jZSBDSSBnaXZlcyBhIGdyZWVuIGxpZ2h0Lgo+IAo+
IElmIGl0IGRvZXNuJ3Qgd29yayBqdXN0IHBpbmcgbWUgYW5kIEkgd2lsbCBwdXNoIGl0LgoKSXQg
ZmluYWxseSBwYXNzZWQgQ0kgYnV0IGl0IGxvb2tzIGxpa2UgeW91J2xsIG5lZWQgdG8gcHVzaCBp
dDoKCnR1cnN1bGluQHR1cnN1bGluLW1vYmwyOn4vd2MvZGltL3NyYyQgZGltIHB1c2gtYnJhbmNo
IGRybS1taXNjLW5leHQKRW51bWVyYXRpbmcgb2JqZWN0czogMTUsIGRvbmUuCkNvdW50aW5nIG9i
amVjdHM6IDEwMCUgKDE1LzE1KSwgZG9uZS4KRGVsdGEgY29tcHJlc3Npb24gdXNpbmcgdXAgdG8g
OCB0aHJlYWRzCkNvbXByZXNzaW5nIG9iamVjdHM6IDEwMCUgKDgvOCksIGRvbmUuCldyaXRpbmcg
b2JqZWN0czogMTAwJSAoOC84KSwgMi4zMiBLaUIgfCA1OTMuMDAgS2lCL3MsIGRvbmUuClRvdGFs
IDggKGRlbHRhIDcpLCByZXVzZWQgMCAoZGVsdGEgMCksIHBhY2stcmV1c2VkIDAKZXJyb3I6IHJl
bW90ZSB1bnBhY2sgZmFpbGVkOiB1bmFibGUgdG8gY3JlYXRlIHRlbXBvcmFyeSBvYmplY3QgZGly
ZWN0b3J5ClRvIHNzaDovL2dpdC5mcmVlZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0tbWlzYwogICEg
W3JlbW90ZSByZWplY3RlZF0gICAgICAgICAgIGRybS1taXNjLW5leHQgLT4gZHJtLW1pc2MtbmV4
dCAodW5wYWNrZXIgZXJyb3IpCmVycm9yOiBmYWlsZWQgdG8gcHVzaCBzb21lIHJlZnMgdG8gJ3Nz
aDovL2dpdC5mcmVlZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0tbWlzYycKClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
