Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOYWGO59nWk1QQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 11:31:10 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC71855F9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 11:31:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8D913F7B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 10:31:08 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C8C303F7B4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 10:31:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XJc65pZF;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2FC9443C95;
	Tue, 24 Feb 2026 10:31:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ACDBC116D0;
	Tue, 24 Feb 2026 10:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771929065;
	bh=oUwk8VP9X5cwOfy2FaQDDjO2Cz9u/z4sh5gcdr9Ylx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XJc65pZFDlsZzYhzthM1hMrgBmoCoDRrZXYo8ZXGTAAiBaqdsf54Np++GWVGUvvoC
	 0pz/rfohc9lRY0RXJZTvHS/qyGw1ZIQlbsTLz8o6hbr9L1i1oy38rqutgO1Vtkev1P
	 22Ja3XtxWP2KCAqX6CuVF3QkH2KcHrQmkBWxN/x0LNnjG/w4SmjNdg0hPTz/QWKqnd
	 EYlZikYgFjCRULv1KP5Hc0VEhvcUA7HQy0+e8SoPqrOHViszFP7Cz1dPBVb51eF1ID
	 UDGPuaUrmTI6Zm3YKLWvQRYb44/p19BnjdaCM9HsM/uE64YeFqJkcb69ZxSsCwof5d
	 3PKIpr1BPzk7A==
Date: Tue, 24 Feb 2026 12:31:00 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260224103100.GI10607@unreal>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260217080206.GJ12989@unreal>
 <0aa8147c-254d-4a1c-89ee-9dc4d4b6b022@amd.com>
 <20260217133431.GN12989@unreal>
 <90088594-5835-4f4f-9e69-aaee67109aa1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90088594-5835-4f4f-9e69-aaee67109aa1@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: TQX4VXH4RUOAMSKDUDQKO3C2LPD5UAPQ
X-Message-ID-Hash: TQX4VXH4RUOAMSKDUDQKO3C2LPD5UAPQ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-
 sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TQX4VXH4RUOAMSKDUDQKO3C2LPD5UAPQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CAAC71855F9
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:55:15PM +0100, Christian K=F6nig wrote:
> On 2/17/26 14:34, Leon Romanovsky wrote:
> > On Tue, Feb 17, 2026 at 10:52:25AM +0100, Christian K=F6nig wrote:
> >> On 2/17/26 09:02, Leon Romanovsky wrote:
> >>> On Sat, Jan 31, 2026 at 07:34:10AM +0200, Leon Romanovsky wrote:
> >>>> Changelog:
> >>>> v7:
> >>>>  * Fixed messed VFIO patch due to rebase.
> >>>
> >>> <...>
> >>>
> >>> Christian,
> >>>
> >>> What should be my next step? Should I resubmit it?
> >>
> >> No, the patches are fine as they are. I'm just waiting for the backmer=
ge of upstream to apply them.
>=20
> And pushed to drm-misc-next.
>=20
> There was a minor merge conflict in patch #5. I think I fixed it up corre=
ctly, but only compile tested the result.

You resolved it correctly.

>=20
> Would probably be good time to now test drm-misc-next if you have some us=
erspace test cases.

Sure, thanks a lot.

>=20
> Regards,
> Christian.
>=20
> >=20
> > Thanks
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
