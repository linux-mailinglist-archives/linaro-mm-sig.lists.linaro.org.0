Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pG1qH7ZsTWpTzwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 23:16:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EACBD71FB30
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 23:16:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=shazbot.org header.s=fm1 header.b=XdwZYmB9;
	dkim=fail ("body hash did not verify") header.d=messagingengine.com header.s=fm2 header.b="Y 3TIAVt";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=shazbot.org (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2ECA40ABE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2026 21:16:36 +0000 (UTC)
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	by lists.linaro.org (Postfix) with ESMTPS id CE2CB40A43
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 21:16:26 +0000 (UTC)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id DD2CA7A0109;
	Tue,  7 Jul 2026 17:16:25 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 07 Jul 2026 17:16:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1783458985;
	 x=1783545385; bh=vkTzXFusKTTIzAQzapZbpKsgu5UXxCg9u56mTBnUn7E=; b=
	XdwZYmB9Wj4oqWvOIK7bccnJslD6HR8FgaMBfQWZYWFlT8Z+vBsobTe42nYcWuNT
	+zew7RpbwujCzxlPa/K+9CtdvsLHI0ctWZbEXCzCkMvjD7cEZTlY4DKEe2oJsBUq
	ehU7OuLiOckXV+d4s7PX8BBMjP0w/KzYp+y16Eu+0L20qbFDE9O6AjZ9U5wxJAcG
	SYf/qx8c8cXSd4ji5TAVU4kYWkld7UVzo8VrCvFTkMohgtd6SQiHabu4C5zJYzmj
	C2acCPSiQ6W3TvfQTVnpq4v1nETBDUJ1HoTZoPKUbONgVMizM6ueeYoJbPwYkQaY
	IMBGexgUoF09FW67PBZw+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1783458985; x=
	1783545385; bh=vkTzXFusKTTIzAQzapZbpKsgu5UXxCg9u56mTBnUn7E=; b=Y
	3TIAVtivpTUnsA+Mi5eq5BacL2+3GBZIO595ClYpUhuD1u6wR90XAloOwCYGUmez
	OskdUD2E5iUR/R/NTAuE7IbFYmTl2bgCOxQnTzQg5tJQ9zJEdHaRplFzDJie15TT
	jcZ3eu4BsafddtPhge6Hui5x3yXu49noXegJza2H9IZwf6Nct/7f93lLTTsBWsy9
	thJKxdx1709dmZfP2wYpG+Oh3kTQYCEIA1X0KHKaSMRfggD7L48qwehKpG/rGYSP
	V36JWk1GmrFwdXj+sdlFJRItNyAxtH1Yqk82z4F4e8nzzIbjpSczsdGMrPvruzod
	8mo67cTe+SZJZ21BNDLWA==
X-ME-Sender: <xms:qGxNaiqsjFChoxPMCCyTFgtWVk59FW8Tj_bPLLiwwekTSBLycVJfLA>
    <xme:qGxNasXZ7d3K94TrK5Hqd-3_KqmcGGHNUgBnDM6KS-Fh80B__4oSHpa-2NLhxHVWX
    VlWyMIrNfd3S6GKpdikEZJeQCvdOoaklUaRye6B3Mg-0xLfQS2cnw>
X-ME-Received: <xmr:qGxNah4Q0WO-OL2gA9k_5tAKz4mVcqOEQK0vMrpOq-SY9ibT9UZkQnU_rFI>
X-ME-Proxy-Cause: dmFkZTGZWM0TZAYrez3OUUVryhpKd4yBz4AC3t1m3FkOUK7rQ5mGJ4wrt4utdwOVYPjpQp
    vzQtgJbhl8rO/x/CT9lk4Zp3f4iiNmlVyK9JAdRnk+zJK0ETjdKCobP3R9NLjCnoEjfNAv
    txL/7RwaZE/cmZiUsnkpcFbWnkixRDRAG9X+ot3yl5IutpYx6Jdahs0nXCnd4lBTXrjGX/
    QN9h2Lvfl1ViCbBWWKbgcHme930j7OPe4HLWznK0DBqLyQX0WvphwSbm+uDQ8ztc5iBuTi
    +FV3waBa2MmWtUt0rU/S1hteG77+Mx6/10h/wbTQKXc41WSIOLVnSrvU4tkxSuwq2S09ig
    tWNR7X7iLIx00DcIlNZrohC8zkRj7NAdZtje+7b9qpULkOfaliC1QJilJB/V+S4w1GzLSN
    ipP6jo5pnbodPKAvNK2guRF7NeGQ8dabSCInLGizMzmO74o37/mas7XpniWxhmnGjNEusz
    +TMTFHHYYyCXNO/5ssMxGsxLoA+O/0gJB95eMgKsC8Gv+jOPFhAvxuvYbKuiXKlZ92SHut
    /Ry0n610i7H7Ougj/OfoRPKK41qb7/q+1BIWFVhXOAXDzwcVDwP4Je/OOiS6PWW3J5Q9et
    Tgb/hc3n8cF/fPpQLhwhj/AI+cojyxehy42/j85EzmTuV/uvMLHOERPoKljw
X-ME-Proxy: <xmx:qGxNai0YUQKckzrnWgqMvctSdfFOW7SlApkhvhKvdILX6E9_yle2RA>
    <xmx:qGxNag_5eHBCfXMhWqA9g-yhtlg2eDA3EQzPl-69iyFuq1zFTNulpQ>
    <xmx:qGxNajuW9aDdn3mdSBIA-9HdtfcU1HNFoICIN5LlnG19xbX3HA4mMA>
    <xmx:qGxNaspLtqRXcjTGjtK42yqtwdLxJgghDB44m-4kK_bj4Utvvv0saw>
    <xmx:qWxNar8-nB_4JdGiKT5Nlb8zOgYid1ncsMBRLiw0IAUZUBYTLIkJGT0O>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Jul 2026 17:16:23 -0400 (EDT)
Date: Tue, 7 Jul 2026 15:16:21 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <20260707151621.6bb023d0@shazbot.org>
In-Reply-To: <20260701171245.90111-1-matt@ozlabs.org>
References: <20260701171245.90111-1-matt@ozlabs.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: QVNMRB3P4CDWG6VMSOSCV7FYDGO3I24Q
X-Message-ID-Hash: QVNMRB3P4CDWG6VMSOSCV7FYDGO3I24Q
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Kevin Tian <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 00/10] vfio/pci: Add mmap() for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QVNMRB3P4CDWG6VMSOSCV7FYDGO3I24Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm1,messagingengine.com:s=fm2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:kevin.tian@intel.com,m:praan@google.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,m:alex@shazbot.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EACBD71FB30

On Wed,  1 Jul 2026 18:12:12 +0100
Matt Evans <matt@ozlabs.org> wrote:
> 
> This is based on v7.1.

Hi Matt,

This needs to be rebased.  Sashiko has failed to apply every version of
this series since the v1 posting.  It's straightforward to rebase, but
there are some subtle gotchas and running Sashiko against the result
indicates this probably still has some bugs to work through.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
