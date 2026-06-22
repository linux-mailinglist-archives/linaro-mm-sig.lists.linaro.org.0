Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IEPtIGQyOWpeoQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 15:02:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFA26AFA16
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 15:02:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ideasonboard.com header.s=mail header.b=pkH1eov6;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ideasonboard.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54F1540976
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:02:23 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 5C72940976
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 13:01:53 +0000 (UTC)
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A7868227;
	Mon, 22 Jun 2026 15:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782133273;
	bh=N1ETn9Jj5pisDG1bq4JWbw7aNdqW9tjRev1AlON/zSM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pkH1eov6TunNPB/42dP+l4CcIVfCj0VfhTOtlWUFC495AwNZ/wTA8JXegYFwKSzeK
	 ztro35Mvx9mLkJtnKzEdv6cdcxFzzx9mljL16idQzi+AtSINWRDmQ7YFuH1BY+wMNR
	 l9muZ7J2YuFPTUw8073tBmt+rCj9ABAd0e1tgALE=
Date: Mon, 22 Jun 2026 16:01:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: biren pandya <birenpandya@gmail.com>
Message-ID: <20260622130150.GA3948118@killaraus.ideasonboard.com>
References: <20260616181956.61476-2-birenpandya@gmail.com>
 <20260622115544.GA3899302@killaraus.ideasonboard.com>
 <CAAeMi9LMootkxmRE0tjo0mwijAuA0u+49HhxWxRGU-pSz+Cggw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeMi9LMootkxmRE0tjo0mwijAuA0u+49HhxWxRGU-pSz+Cggw@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: 2WDZWFV7CKD3OAZUBOOABS33UECMBNOX
X-Message-ID-Hash: 2WDZWFV7CKD3OAZUBOOABS33UECMBNOX
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: modernize locks to use scoped_guard()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WDZWFV7CKD3OAZUBOOABS33UECMBNOX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[ideasonboard.com:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[ideasonboard.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:birenpandya@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[laurent.pinchart@ideasonboard.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:-];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:from_mime,linaro.org:email,killaraus.ideasonboard.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AFA26AFA16

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgMDY6MjI6MjdQTSArMDUzMCwgYmlyZW4gcGFuZHlhIHdy
b3RlOg0KPiBPbiBNb24sIEp1biAyMiwgMjAyNiBhdCA1OjI14oCvUE0gTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToNCj4gPiBPbiBUdWUsIEp1biAxNiwgMjAyNiBhdCAxMTo0OTo1N1BNICswNTMwLCBC
aXJlbiBQYW5keWEgd3JvdGU6DQo+ID4gPiBTZXZlcmFsIEdFTSBjb3JlIGZ1bmN0aW9ucyBtYW51
YWxseSBtYW5hZ2VkIG11dGV4X2xvY2soKSBhbmQNCj4gPiA+IG11dGV4X3VubG9jaygpIG92ZXIg
c2luZ2xlIHNjb3BlcyBvciBlcnJvciBwYXRocy4gVGhpcyBhZGRzIGJvaWxlcnBsYXRlDQo+ID4g
PiBhbmQgY2FycmllcyB0aGUgcmlzayBvZiBsb2NrIGxlYWtzIGlmIGVycm9yIHBhdGhzIGFyZSBy
ZWZhY3RvcmVkLg0KPiA+ID4NCj4gPiA+IE1vZGVybml6ZSB0aGVzZSBsb2NrcyBieSBkZXBsb3lp
bmcgdGhlIDxsaW51eC9jbGVhbnVwLmg+IHNjb3BlZF9ndWFyZCgpDQo+ID4gPiBtYWNyby4gVGhp
cyBlbnN1cmVzIHRoYXQgdGhlIGxvY2tzIGFyZSByZWxpYWJseSBkcm9wcGVkIHdoZW4gdGhlIGJs
b2NrDQo+ID4gPiBleGl0cywgY2xlYW5seSByZW1vdmluZyBnb3RvIG91dF91bmxvY2sgcGF0aHMg
YW5kIHRpZ2h0ZW5pbmcgdGhlDQo+ID4gPiBsaWZlY3ljbGUuDQo+ID4NCj4gPiBXaGF0J3MgdGhl
IHJlYXNvbiBmb3IgZG9pbmcgc28gaW4gaW4gZHJtX2dlbSBhbmQgbm90IG90aGVyIGFyZWFzIGlu
IERSTQ0KPiA+ID8NCj4gDQo+IEhpIExhdXJlbnQsDQo+IA0KPiBUaGFua3MgZm9yIHRha2luZyBh
IGxvb2suDQo+IE5vIGRlZXBlciByZWFzb24gdGhhbiBpdCBiZWluZyB3aGVyZSBJIGhhcHBlbmVk
IHRvIHN0YXJ0IOKAlCBJIGRpZG4ndA0KPiBtZWFuIHRvIHNpbmdsZSBpdCBvdXQsIGFuZCBJJ2Qg
cmF0aGVyIHRoZSB0cmVhdG1lbnQgYmUgY29uc2lzdGVudCB0aGFuDQo+IHBpZWNlbWVhbC4NCj4g
DQo+ID4gPiBAQCAtMTAyMSwzNyArMTAxOCwzNCBAQCBpbnQgZHJtX2dlbV9jaGFuZ2VfaGFuZGxl
X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ID4gPiAgICAgICAg
ICAgICAgIGdvdG8gb3V0Ow0KPiA+ID4gICAgICAgfQ0KPiA+ID4NCj4gPiA+IC0gICAgIG11dGV4
X2xvY2soJmZpbGVfcHJpdi0+cHJpbWUubG9jayk7DQo+ID4gPiArICAgICBzY29wZWRfZ3VhcmQo
bXV0ZXgsICZmaWxlX3ByaXYtPnByaW1lLmxvY2spIHsNCj4gPiA+ICsgICAgICAgICAgICAgc3Bp
bl9sb2NrKCZmaWxlX3ByaXYtPnRhYmxlX2xvY2spOw0KPiA+ID4gKyAgICAgICAgICAgICByZXQg
PSBpZHJfYWxsb2MoJmZpbGVfcHJpdi0+b2JqZWN0X2lkciwgb2JqLCBoYW5kbGUsIGhhbmRsZSAr
IDEsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRlBfTk9XQUlUKTsNCj4g
PiA+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2soJmZpbGVfcHJpdi0+dGFibGVfbG9jayk7DQo+
ID4NCj4gPiBBbmQgd2h5IGRvbid0IHlvdSB1c2UgZ3VhcmRzIGZvciB0aGUgc3BpbmxvY2sgYXMg
d2VsbCA/DQo+IA0KPiBGYWlyIHBvaW50IOKAlCB0aGUgc3BpbmxvY2tzIGhlcmUgYXJlIGVxdWFs
bHkgZ29vZCBjYW5kaWRhdGVzOyBJIG9ubHkNCj4ga2VwdCB2MSB0byBtdXRleGVzIHRvIGtlZXAg
aXQgc21hbGwuDQo+IA0KPiBUaGF0IHNhaWQsIHRoaXMgaXMgYSBwdXJlIGNsZWFudXAgd2l0aCBu
byBmdW5jdGlvbmFsIGNoYW5nZSwgc28gaXQncw0KPiBlbnRpcmVseSB5b3VyIGNhbGwgd2hldGhl
ciBpdCdzIHdvcnRoIGNhcnJ5aW5nLg0KPiBJZiB5b3UnZCBsaWtlIGl0LCBJJ2xsIHNlbmQgYSB2
MiB0aGF0IGNvbnZlcnRzIGJvdGggdGhlIG11dGV4ZXMgYW5kDQo+IHRoZSBzcGlubG9ja3MgaW4g
ZHJtX2dlbS5jIGNvbnNpc3RlbnRseS4gSWYgeW91J2QgcHJlZmVyIG5vdCB0byB0YWtlDQo+IGNs
ZWFudXAtb25seSBjaHVybiwgSSdtIGhhcHB5IHRvIGRyb3AgaXQg4oCUIG5vIHByb2JsZW0gZWl0
aGVyIHdheS4NCg0KSSdsbCBsZXQgdGhlIG1haW50YWluZXJzIG9mIHRoYXQgY29kZSBkZWNpZGUg
KEknbSBub3Qgb25lIG9mIHRoZW0pLg0KDQotLSANClJlZ2FyZHMsDQoNCkxhdXJlbnQgUGluY2hh
cnQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
