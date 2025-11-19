Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDJ8I7D+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B109410966
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:22:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 551CD40500
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:22:23 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id CD3743F99C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 15:50:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Laj4zYxh;
	spf=pass (lists.linaro.org: domain of mani@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mani@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C5CD641848;
	Wed, 19 Nov 2025 15:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3A51C2BCB0;
	Wed, 19 Nov 2025 15:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763567407;
	bh=mtl+IHM/JXtrCO8ISnitiGZcya/g9fsTYHXlgtCEzjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Laj4zYxhFW+Cyz8oEoGr4IEUQkfwUMdLv7HRG6pEmMXhq+vvRB62wNZAYyCBhwMgW
	 ydZ26okaryoinvEE8tIJbLlJoY1/cMOVAl5gZWnUjbENpW2a9mfRw+vAlvoqjU3euP
	 pbkZQ00ScKclvx/Fc7+VWCtde1BoO4ZllGxuhaaQ6oHWiJx30xfmdUGu2l8xqahHsp
	 T+hG+IPeCO3xnQsYkJ7VatBdtqrEHMzKKg55/4DdSBYnYup2E2b5/XfowD8zPoAvGV
	 SUjpmYocHoRKpWNGz1Ow4h6dPUUWYAJv0jrXiCMFF0CA6h8rz5TtzNJHhRm6MSXZFU
	 PqBSfmBBhtEiA==
Date: Wed, 19 Nov 2025 21:19:25 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <wuyn4v625xw4n2jm4eiullfrprmjiw4aiwo4zudcp4ppd2yeva@s7vzfoinnavt>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-16-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-16-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: ---
X-MailFrom: mani@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L2Q5PVOJQJM2HCMZG7PC4UIVSOQSPCDG
X-Message-ID-Hash: L2Q5PVOJQJM2HCMZG7PC4UIVSOQSPCDG
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:55 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.
 kernel.org, linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@
 linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@lin
 ux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 15/21] PCI: epf-test: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2Q5PVOJQJM2HCMZG7PC4UIVSOQSPCDG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3551];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.591];
	RCPT_COUNT_GT_50(0.00)[92];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com, linux.dev,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,lin ux.ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 4B109410966
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBOb3YgMTMsIDIwMjUgYXQgMDM6MzI6MjlQTSArMDEwMCwgQW5keSBTaGV2Y2hlbmtv
IHdyb3RlOg0KPiBVc2UgJXB0U3AgaW5zdGVhZCBvZiBvcGVuIGNvZGVkIHZhcmlhbnRzIHRvIHBy
aW50IGNvbnRlbnQgb2YNCj4gc3RydWN0IHRpbWVzcGVjNjQgaW4gaHVtYW4gcmVhZGFibGUgZm9y
bWF0Lg0KPiANCj4gQWNrZWQtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGlu
dXguaW50ZWwuY29tPg0KDQpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtl
cm5lbC5vcmc+DQoNCi0gTWFuaQ0KDQo+IC0tLQ0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVu
Y3Rpb25zL3BjaS1lcGYtdGVzdC5jIHwgNSArKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bj
aS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMgYi9kcml2ZXJzL3BjaS9lbmRwb2lu
dC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMNCj4gaW5kZXggYjA1ZThkYjU3NWMzLi5kZWJkMjM1
MjUzYzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2kt
ZXBmLXRlc3QuYw0KPiArKysgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVw
Zi10ZXN0LmMNCj4gQEAgLTMzMSw5ICszMzEsOCBAQCBzdGF0aWMgdm9pZCBwY2lfZXBmX3Rlc3Rf
cHJpbnRfcmF0ZShzdHJ1Y3QgcGNpX2VwZl90ZXN0ICplcGZfdGVzdCwNCj4gIAkJcmF0ZSA9IGRp
djY0X3U2NChzaXplICogTlNFQ19QRVJfU0VDLCBucyAqIDEwMDApOw0KPiAgDQo+ICAJZGV2X2lu
Zm8oJmVwZl90ZXN0LT5lcGYtPmRldiwNCj4gLQkJICIlcyA9PiBTaXplOiAlbGx1IEIsIERNQTog
JXMsIFRpbWU6ICVsbHUuJTA5dSBzLCBSYXRlOiAlbGx1IEtCL3NcbiIsDQo+IC0JCSBvcCwgc2l6
ZSwgZG1hID8gIllFUyIgOiAiTk8iLA0KPiAtCQkgKHU2NCl0cy50dl9zZWMsICh1MzIpdHMudHZf
bnNlYywgcmF0ZSk7DQo+ICsJCSAiJXMgPT4gU2l6ZTogJWxsdSBCLCBETUE6ICVzLCBUaW1lOiAl
cHRTcCBzLCBSYXRlOiAlbGx1IEtCL3NcbiIsDQo+ICsJCSBvcCwgc2l6ZSwgZG1hID8gIllFUyIg
OiAiTk8iLCAmdHMsIHJhdGUpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBwY2lfZXBmX3Rl
c3RfY29weShzdHJ1Y3QgcGNpX2VwZl90ZXN0ICplcGZfdGVzdCwNCj4gLS0gDQo+IDIuNTAuMQ0K
PiANCg0KLS0gDQrgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
