Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP9tGPYjeWnmvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 21:45:42 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F99A6E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 21:45:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA6E0401B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 20:45:40 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B98883F78D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 20:45:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=B23TEVsJ;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF105415F5;
	Tue, 27 Jan 2026 20:45:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15B6BC116C6;
	Tue, 27 Jan 2026 20:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769546734;
	bh=kWJnczCRjQfP3+mri2axksFFudA/BEKhqvdeAp2MhAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B23TEVsJccWQDX9Mjx22xVlETkMrrPsVBBGPzr1/qClDRQwwIBUEpOC/B3atxGcBl
	 s1GNk7zvmuHc8Ak8BzI57RVpONP9viPDQ9AUq4FK45Mh9JRYYIuCMLbbwyCrKLuUy2
	 3aLWXhw79ygY0VefybeyuREyCYmCj2aKCHAwuwZhODd1oUQnKU0/D5zUmNMPWwzGhS
	 VccjJRVDi7QyNxVnNABics3aPJZgWOd2TGAtA390Bkrtkg6RWzFHRZfK9zJpPGzack
	 wBItE/Q3nIcFifOKrFXt7u9v+WwsoBkT+i0QyYk4WRkirXYn1QmRecC+jpiFNhqN5u
	 ri0eOMMXGeg9w==
Date: Tue, 27 Jan 2026 22:45:30 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260127204530.GX13967@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-3-f98fca917e96@nvidia.com>
 <0d2ec2d6-c999-45d8-a2bd-b5b21883db47@amd.com>
 <20260127095831.GR13967@unreal>
 <83cd911c-99ea-4fab-821e-fcf703209731@amd.com>
 <20260127114243.GS13967@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127114243.GS13967@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: 5ZXXIBU64XWGNXQJETC7LVNIHKKWQJSU
X-Message-ID-Hash: 5ZXXIBU64XWGNXQJETC7LVNIHKKWQJSU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ZXXIBU64XWGNXQJETC7LVNIHKKWQJSU/>
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
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: CA3F99A6E3
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 01:42:43PM +0200, Leon Romanovsky wrote:
> On Tue, Jan 27, 2026 at 11:02:03AM +0100, Christian K=F6nig wrote:
> > On 1/27/26 10:58, Leon Romanovsky wrote:
> > > On Tue, Jan 27, 2026 at 10:26:26AM +0100, Christian K=F6nig wrote:
> > >> On 1/24/26 20:14, Leon Romanovsky wrote:
> > >>> From: Leon Romanovsky <leonro@nvidia.com>
> > >>>
> > >>> DMABUF_MOVE_NOTIFY was introduced in 2018 and has been marked as
> > >>> experimental and disabled by default ever since. Six years later,
> > >>> all new importers implement this callback.
> > >>>
> > >>> It is therefore reasonable to drop CONFIG_DMABUF_MOVE_NOTIFY and
> > >>> always build DMABUF with support for it enabled.
> > >>>
> > >>> Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
> > >>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > >>
> > >> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > >>
> > >> As long as nobody starts screaming in the last second or I encounter=
 some other problem I'm going to push the first three patches to drm-misc-n=
ext now.
> > >=20
> > > How do you see progress of other patches?
> > > Can they be queued for that tree as well?
> >=20
> > I was hoping to get through them by the end of the week.
> >=20
> > Just wanted to make sure that CI systems start to see the first three p=
atches (who affect everybody), so that we get early feedback should we have=
 missed something.
>=20
> Perfect, I based my patches on these two commits:
> 61ceaf236115 (vfio/for-linus) vfio: Prevent from pinned DMABUF importers =
to attach to VFIO DMABUF
> 24d479d26b25 (tag: v6.19-rc6) Linux 6.19-rc6

The fix was merged https://git.kernel.org/pub/scm/linux/kernel/git/torvalds=
/linux.git/commit/?id=3D1f97d9dcf53649c41c33227b345a36902cbb08ad

Thanks

>=20
> Thanks
>=20
> >=20
> > Regards,
> > Christian.
> >=20
> > >=20
> > > Thanks
> > >=20
> > >>
> > >> They are basically just cleanups we should have done a long time ago.
> > >>
> > >> Regards,
> > >> Christian.
> > >>
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
