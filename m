Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AyWOVWMeGmqqwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:58:45 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AEE923ED
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:58:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58CB33F8FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 09:58:44 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 15AAA3F732
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 09:58:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nXyeIUrw;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 553B060127;
	Tue, 27 Jan 2026 09:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6682CC116C6;
	Tue, 27 Jan 2026 09:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769507917;
	bh=e43WCMmXKqoQ1viplvp1q9BvjTcDlq2o9m6+FYicNOs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nXyeIUrwYH9Bvocj5q0H1KwuQq1u/sKXPPVIw9K2PpvUG9LoSqsRH6xT3lsT4xr+c
	 9y8emVYoVXxF3LwoCELy+invYwnX6zrkTk8R+d4CKR0mOVEMciyCy8BMUnrTC4KNj6
	 wdsO0lOvxpF6uI6g0uapcxuA0/8EZtzYAOupfFrf9C3S9aB8yRSbZ6DmR7hO4du9i+
	 QKRbzayg5NAafG3KIt7x2i73nJnOMWFOFi2hWGbKkXaCIbn4d2cfK6YZNTMJ/1qj17
	 Ooquo9YVpyBgYu3vzrWdY/ETm3IIOGXeiP+EUsNCvPgRA/cVf0jujyumqucigd0Fit
	 w5UegsPWQTs/w==
Date: Tue, 27 Jan 2026 11:58:31 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260127095831.GR13967@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-3-f98fca917e96@nvidia.com>
 <0d2ec2d6-c999-45d8-a2bd-b5b21883db47@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d2ec2d6-c999-45d8-a2bd-b5b21883db47@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: UVOOBAS6TBQKSYXUNMP5UK6GCJYFNVD5
X-Message-ID-Hash: UVOOBAS6TBQKSYXUNMP5UK6GCJYFNVD5
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UVOOBAS6TBQKSYXUNMP5UK6GCJYFNVD5/>
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
	NEURAL_HAM(-0.00)[-0.839];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 57AEE923ED
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:26:26AM +0100, Christian K=F6nig wrote:
> On 1/24/26 20:14, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > DMABUF_MOVE_NOTIFY was introduced in 2018 and has been marked as
> > experimental and disabled by default ever since. Six years later,
> > all new importers implement this callback.
> >=20
> > It is therefore reasonable to drop CONFIG_DMABUF_MOVE_NOTIFY and
> > always build DMABUF with support for it enabled.
> >=20
> > Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>=20
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
>=20
> As long as nobody starts screaming in the last second or I encounter some=
 other problem I'm going to push the first three patches to drm-misc-next n=
ow.

How do you see progress of other patches?
Can they be queued for that tree as well?

Thanks

>=20
> They are basically just cleanups we should have done a long time ago.
>=20
> Regards,
> Christian.
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
