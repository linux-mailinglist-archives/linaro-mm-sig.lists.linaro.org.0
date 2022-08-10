Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6065958F115
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 19:02:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65BDA47994
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 17:02:14 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2088.outbound.protection.outlook.com [40.107.95.88])
	by lists.linaro.org (Postfix) with ESMTPS id 9627047956
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 17:02:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXceh7NE264nzes4E8f2gIHrscE/Pq/APyMg3N91bBygc+SWKxbEie9CcU87TE9FAruz4K+IShGxpMm1Z+DBaf1LAbMHI3nos62hZlCt6rzkjJE1FZsptFDQVTlTeNnOtp+LjlNZrXW6SaSuIJRcJD6PXKDWkXgc1NfeBsp+Ol6rkpdvmXQQYAte1986ptXI+lvEPt6WxYYdTzpkn0XKopZmt5T37rQuhkgd6GDYuGTSj0mBbk5RaTLox7lmTkij+ZbafnWhnuSplHMwIYFd5BwmKWvaj6CpFEP44I2kaCmAaCLavnBY+ho1K7ujEQLso139guy+YKlxYqF0J4Ge6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTKUcsyDY54dknSFD98thMM2QymJNzAhEEwLm4fQ8t4=;
 b=SjTx1csrHalILcEozsDCdYRrh2QLyOo+cHtnT45UkYREy/WkxpAee5AtwO83rZhu9z3BCTjANgi4wzUAxBhqah1Bwzk52/zszWFSoLIbkH3qKstnVSe8rwByCj2By1NJykim8OkG0CvgQGMS9ZzGkln/aYZoDlF4Br0LhKuh6QDoo4UI3TS3H5x3aDhxkT4918L9bcc71KgMWMzWrpCiyIdbSaxF50oXO4DGqf9hSEzRov8FCKp4G9xqnfTmqA0Jye+wtvlldZsmv1j2HXXMdScRLnhy9WHk7sNsx3wiqCqk9gdeJx6zYNli1L8McYBTZxOsKRbbFsh+6y0qfEhvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTKUcsyDY54dknSFD98thMM2QymJNzAhEEwLm4fQ8t4=;
 b=v7GAlRPiUfiX8DhlR4Tyn7ZTi4MtgiG4GMFD1SJ1iOYADrmpVd/sJqa3vYPVq6+AfKe6NSVJH3SFUYX+h5jtZyJsAXWQMzWDBOC328RD4ogKEeT1EGCnGMXW9h8AWmoUOBfd1hbd1lvh/PjiRMqF5LCpfDg+tIepVSPC8jvhhJ0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4697.namprd12.prod.outlook.com (2603:10b6:5:32::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 10 Aug
 2022 17:02:08 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 17:02:08 +0000
Message-ID: <c78e4774-6319-a9ce-978b-4489e1913da3@amd.com>
Date: Wed, 10 Aug 2022 19:01:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220712102849.1562-1-christian.koenig@amd.com>
 <CAKMK7uFnMSKXcU+v_g-Sh62O5MB1uY=K2H-Fq7-5UYtmmjCZ_w@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAKMK7uFnMSKXcU+v_g-Sh62O5MB1uY=K2H-Fq7-5UYtmmjCZ_w@mail.gmail.com>
X-ClientProxiedBy: AM6PR05CA0013.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::26) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2876b1c-b542-4f3d-7d80-08da7af20f0e
X-MS-TrafficTypeDiagnostic: DM6PR12MB4697:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QjFKhiIkv4IfnJ2VOU1kM1J83F8UwqCBM4x6oHV5eEGiOlhlBnOyKjG5vet3lO2nLDHHjz//27oK/W5GBfeDwuYv2W5lIPYDyoUusw8CAib1vmFJVi72Ip9KlFInQnwr6dEVhkupbset6F0w95zQr805u82NLqtq8RyM/M/dFzNc/gygHIoawoDmJzSOSI5HyykZG+6WOyebJ8oP/tI/os+0o+may8lY+bnZ4iFbt2jaeowvXU35VqYwavjyHMDnKFUzLMvDkpSSg/voQp7cSBcBHo0sgLvxRCQ2kfNHsP5cBxoDXo5dbmiXB/W7xDwhuGA/v1N0UcTfevGE/qPEXcBRyZpY/ieZfCgFiZuwAC4xbJ9pauIAlh/Buro0apzwWSYjBPgjdN+ZAC07spb1qA9BuvS9zMNzjZYjMlcjs0Y3/fUmtxtBC3nju7SWRAnXHYTugs6C5zEobxHINQDcPi8UECI3sMTvotJeNH/iypgv0CY3QejgJZZxmGdl0n2NDatoKc58O+7I6gmWUeTkrUFeArlHsHYJ7aIvZKlmvM45zG4J3a37YgcNseBMlWjN1sOEef9Im+tDAHtQYnkkcSnm1sdaZm1IHml99DtuD670kysRJPShX40Qjd8dVTrBgW0thb+zul00EifhYg4uCpTmBZ6IikcWSP9IwvFlyzA/mItdMi6vsMW9q8Xdskglcw6xYgKJ2hjyZIlHOiq7C2Mr6snMevjGacIBrKNdXyr2FKwthaMQtVhd2IIy5ZQvg1NG621+H/6Is69I84lpc0TDCDileWl9Vrh7+LMxkH0eQtS/p3TD2yXajNZrJ5t5GPqgSF0Aq/XjoiDWay33Ow==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(376002)(39860400002)(366004)(346002)(186003)(41300700001)(8936002)(31686004)(83380400001)(5660300002)(66574015)(2616005)(36756003)(66556008)(66946007)(31696002)(66476007)(38100700002)(86362001)(2906002)(478600001)(6486002)(316002)(110136005)(6506007)(4326008)(8676002)(6666004)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VHBCMVNGVUlGeU00Y2tBN2pPNjBXL2lFUWVBQjA0Z3lmb3VhLzROUVJEbzJR?=
 =?utf-8?B?dkJUSkVJZG5Wa3lKUUwvMUpXdUM2RkFwWVhhaFRRQzhGd09OdytMcTBXNFNh?=
 =?utf-8?B?My95c0ZjaU5XZzk5UmE2SmUyU0R4SUE5TUg2VlFkRjJtUk9CWHI4WFVqVXNx?=
 =?utf-8?B?Y1pGN1lhbW15b0E2YzZFeXBKSXRaNTNYakJLckhSQ0ErY3ovZERXRkJOZkVQ?=
 =?utf-8?B?SXVYaXgrbDBiVFE4Mlc0TUhOVno1S0lHZDgvemhyUVRxdWM1ZUJiem1RWUtv?=
 =?utf-8?B?eWgvbjhTR3FpOUFDdmNueG9lZHd6NXR1MktnZS9vaGlpcUo1UmthaFptQXBk?=
 =?utf-8?B?UTZ2aDU5SkFFZ0JmZFFZRnZ5L08ybzFOWUdiclU4YTJSMVBQMUplRTc1MFRO?=
 =?utf-8?B?d2NldDgyeWQ5MHNWdUp3N2hyNEh2V3lwTWo5VHpsc1NpUENxS0hFZkdUc0VG?=
 =?utf-8?B?N1ZxSm9RY2dNTUZtcFdKSHRIakRlbzE5aFhnYXE4eEFETTZlaUpWZmJqZkUr?=
 =?utf-8?B?TTJPUXJLTHdVblRRSmFMUDI3Z1Z1L2V3cm9ZcStqZTF1TEFaT2c1cDdVR1l0?=
 =?utf-8?B?SERxM1BUOHZrODNEZ3NycUZpQnBjdW1xYkQrUFQ4ckVTbncyb3cyNkdJQ0h6?=
 =?utf-8?B?MHRxbFBXZXFOckNjd0JJNHorQ2YxVGFEYThlcUFINkFJZXFuc1JrVzNYNDJ4?=
 =?utf-8?B?TFBYV0ZtOHV0VEI4Q2RNcjUwMDl5VEUvU0N6bmVDekdjL0J4VjNSVFN2UHF5?=
 =?utf-8?B?NklUWFJCd09xaktSc0UyaEpqWmora1cyNmZzWkZVSUNpL2tQQ01jbEF6NTVE?=
 =?utf-8?B?b2h1NlZ0UXVMODlEeU92U3lIYzMrOExrUVhuZG03aW9meFBZU1BpSHhWUlYv?=
 =?utf-8?B?VWxxSkdEc2dsckh2N1BvMzhNUXlhTDZRWUdUeUtEbEd6K3YwS0xJUytUYjZF?=
 =?utf-8?B?WnRyUnNhR2Z1UjBGU1VrOEpWbHNoK0hZOGNBa0tmeUZUZEp3UklmRXdlWlMz?=
 =?utf-8?B?dWJQdzJ0MVF1aHVOdlpoYm8wMnRoYVRja2REaEZzakk3SVh6N0NqUDhXbExs?=
 =?utf-8?B?ZlZ0Z205ZEwxem5xZWd1cGNwcUhEZ2lPUm9jZWtucFRVVE1BQXhBb1JydDY0?=
 =?utf-8?B?Mi9sMEx0RDRXazQzR2k4MytjS2huVXg0M2pIUnBocmZ0M0NKMWhURDRTZ2s0?=
 =?utf-8?B?M0U0ZmZmTWlpcFM0aTZkeDBaOUtBRHROeWJ3UThpVFBPSFdBV1gzZ3VzOWVV?=
 =?utf-8?B?TkZMTGhPTXZYZTJRR29oOEdvSmI0cUgwRkU1NDNiSms0RWo3RlBZSzJveU56?=
 =?utf-8?B?R01ESnlON3hOV0F3NmxMZjlVMExmeFUzRWRxNXdtcjNSTjE0b1hpQ3NjdGxk?=
 =?utf-8?B?cEIyNGFITkgxZ2k2MXplbWxTVkJnbUJNQTQ3cTRZN05NZzk5UFlLQS8xckxi?=
 =?utf-8?B?eWx0eis2K3JPUnBKZmFValFLNFhiTGVDUVZlVllGUFQ2WFJSS011MG1oWGxK?=
 =?utf-8?B?Q01PZy9jSnVKeks2cW1XNDRMVThJOXZKNng2RUZiRmNLVllnV1VUeFNoZjJG?=
 =?utf-8?B?dGtTbXZNcXhqSWxHVHlSMUs4Q2JzTTJvTW14a0VpalQwdHZ1Z0NOMWNSbkQ1?=
 =?utf-8?B?R3VMcEdic3Z5THZZdjdWNzJLTStpRUlERGttVEE2MFhpcWJRMTVmN2xFWDhC?=
 =?utf-8?B?bWNDMlV2K2FQSEJ1VFJwa1hzc2g0SFZSVzNpWVo5SXVReEdrbHFHb0NHMXZo?=
 =?utf-8?B?NHRTakJXZUE5Zm5xZmlZU1FhS2hSZkFsS1JxMEJ1R1hsRThYSnNYQkx3ZXlw?=
 =?utf-8?B?U3NsTkRrVE1PUzNoZGt5a3lDS3lHWlZlMGdCNWJPdytQbDdrSk5XZmZXR2xJ?=
 =?utf-8?B?UEYrR0pSb0M4SXVGRS9SZzVlTW9PYVZ4SURmOTBkNTA5VHZXTWZsMmdvVk9h?=
 =?utf-8?B?MEVRY2dkcExkMmE3cHhqWmIra0ZIQ1BuaVRvSFlBK01vQjFBUzlCbFVPTFMx?=
 =?utf-8?B?bVpLd3k0TnlyY1Z0clBtWk5KdWFJdGUzL3JkaXpSNmFtdERxV1NlOXFnS0ZD?=
 =?utf-8?B?WFk1VXhIOHdqeE5lSWdtWnBWT1p0NXNuYzN3S25hRXdTMXBnSUR1ZWg3UE1h?=
 =?utf-8?B?TUk1cURBWHA0dVpjM29EUE8yVzJyVi9hckh3b1ZuVm1VTFVrc0NwaUlRbU5v?=
 =?utf-8?Q?hmvf6ZEOxXTmsICiGIEKC7/pfncJlxovZnhQyu7CifT+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2876b1c-b542-4f3d-7d80-08da7af20f0e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 17:02:08.1347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QJHvifcS+4LgiJBhDok8O0ix0hbFPpwtN2IEAN4hxnWl+OKSFQuQBXYvM5CX2hB1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4697
Message-ID-Hash: H5IYPN43JHBLQG7IC5IWG6EY7BRIMZDL
X-Message-ID-Hash: H5IYPN43JHBLQG7IC5IWG6EY7BRIMZDL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: karolina.drobnik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H5IYPN43JHBLQG7IC5IWG6EY7BRIMZDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDguMjIgdW0gMTg6NTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIDEy
IEp1bCAyMDIyIGF0IDEyOjI4LCBDaHJpc3RpYW4gS8O2bmlnDQo+IDxja29lbmlnLmxlaWNodHp1
bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBUaGlzIHJldmVydHMgY29tbWl0IDhmNjE5NzM3
MTg0ODVmM2U4OWJjNGY0MDhmOTI5MDQ4YjdiNDdjODMuDQo+Pg0KPj4gSXQgdHVybmVkIG91dCB0
aGF0IHRoaXMgaXMgbm90IGNvcnJlY3QuIEVzcGVjaWFsbHkgdGhlIHN5bmNfZmlsZSBpbmZvDQo+
PiBJT0NUTCBuZWVkcyB0byBzZWUgZXZlbiBzaWduYWxlZCBmZW5jZXMgdG8gY29ycmVjdGx5IHJl
cG9ydCBiYWNrIHRoZWlyDQo+PiBzdGF0dXMgdG8gdXNlcnNwYWNlLg0KPj4NCj4+IEluc3RlYWQg
YWRkIHRoZSBmaWx0ZXIgaW4gdGhlIG1lcmdlIGZ1bmN0aW9uIGFnYWluIHdoZXJlIGl0IG1ha2Vz
IHNlbnNlLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jIHwgMyArKy0NCj4+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgg
ICB8IDYgKy0tLS0tDQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPj4gaW5kZXgg
NTAyYTY1ZWE2ZDQ0Li43MDAyYmNhNzkyZmYgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jDQo+PiBAQCAtNzIsNyArNzIsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9m
ZW5jZV91bndyYXBfbWVyZ2UodW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQo+PiAgICAgICAgICBj
b3VudCA9IDA7DQo+PiAgICAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKSB7
DQo+PiAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2godG1wLCAmaXRl
cltpXSwgZmVuY2VzW2ldKQ0KPj4gLSAgICAgICAgICAgICAgICAgICAgICAgKytjb3VudDsNCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHRtcCkp
DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICsrY291bnQ7DQo+PiAgICAgICAg
ICB9DQo+Pg0KPj4gICAgICAgICAgaWYgKGNvdW50ID09IDApDQo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11
bndyYXAuaA0KPj4gaW5kZXggMzkwZGUxZWU5ZDM1Li42NmIxZTU2ZmJiODEgMTAwNjQ0DQo+PiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KPj4gKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+IEBAIC00MywxNCArNDMsMTAgQEAgc3RydWN0IGRt
YV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpj
dXJzb3IpOw0KPj4gICAgKiBVbndyYXAgZG1hX2ZlbmNlX2NoYWluIGFuZCBkbWFfZmVuY2VfYXJy
YXkgY29udGFpbmVycyBhbmQgZGVlcCBkaXZlIGludG8gYWxsDQo+PiAgICAqIHBvdGVudGlhbCBm
ZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVzdCBhIG5vcm1hbCBmZW5jZSBvbmx5IHRoYXQg
b25lIGlzDQo+PiAgICAqIHJldHVybmVkLg0KPj4gLSAqDQo+PiAtICogTm90ZSB0aGF0IHNpZ25h
bGxlZCBmZW5jZXMgYXJlIG9wcG9ydHVuaXN0aWNhbGx5IGZpbHRlcmVkIG91dCwgd2hpY2gNCj4+
IC0gKiBtZWFucyB0aGUgaXRlcmF0aW9uIGlzIHBvdGVudGlhbGx5IG92ZXIgbm8gZmVuY2UgYXQg
YWxsLg0KPj4gICAgKi8NCj4+ICAgI2RlZmluZSBkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKGZl
bmNlLCBjdXJzb3IsIGhlYWQpICAgICAgICAgICAgICAgICBcDQo+PiAgICAgICAgICBmb3IgKGZl
bmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBmZW5jZTsgICAgICAg
XA0KPj4gLSAgICAgICAgICAgIGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikp
ICAgICAgICAgICAgICAgICAgICAgXA0KPj4gLSAgICAgICAgICAgICAgIGlmICghZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKGZlbmNlKSkNCj4+ICsgICAgICAgICAgICBmZW5jZSA9IGRtYV9mZW5jZV91
bndyYXBfbmV4dChjdXJzb3IpKQ0KPiBOb3Qgc3VyZSBpdCdzIHdvcnRoIGl0LCBidXQgY291bGQg
d2Ugc3RpbGwgZmlsdGVyIGJ1dCBrZWVwIHRoZSBmZW5jZQ0KPiBpZiB0aGVyZSdzIGFuIGVycm9y
Pw0KPg0KPiBJJ20gaG9uZXN0bHkgYWxzbyBub3QgZW50aXJlbHkgc3VyZSB3aGV0aGVyIGVycm9y
IHByb3BhZ2F0aW9uIGlzIGENCj4gdGVycmlmaWMgaWRlYSwgc2luY2UgZXZlcnkgc2luZ2xlIHVz
ZS1jYXNlIEkndmUgc2VlbiBpbiBpOTE1IHdhcyBhDQo+IG1pcy1kZXNpZ24gYW5kIG5vdCBnb29k
IGF0IGFsbC4gU28gYnVybmluZyBpdCBhbGwgZG93biBhbmQgZGVjbGFyaW5nDQo+IHRoZSB0ZXN0
Y2FzZXMgaW52YWxpZCBtaWdodCBiZSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaGVyZS4NCg0KVGhp
cyBpcyBub3QgYWJvdXQgZXJyb3IgcHJvcGFnYXRpb24uDQoNClRoZSBzeW5jX2ZpbGUgaGFzIGFu
IElPQ1RMIHdoaWNoIGFza3MgaG93IG1hbnkgb2YgdGhlIG1lcmdlZCBmZW5jZXMgYXJlIA0KYWxy
ZWFkeSBzaWduYWxlZC4gV2hlbiB3ZSBmaWx0ZXIgc2lnbmFsZWQgZmVuY2VzIGhlcmUgdGhlIHJl
c3VsdCBvZiB0aGlzIA0KaXMgYWx3YXlzIDAuDQoNCldlIGhhdmUgYW4gaWd0IHRlc3QgZXhlcmNp
c2luZyB0aGlzIHdoaWNoIHJlcG9ydGVkIHRoYXQgdGhlIElPQ1RMIA0KZG9lc24ndCB3b3JrIGFu
eSBtb3JlLg0KDQpDaHJpc3RpYW4uDQoNCj4gLURhbmllbA0KPg0KPj4gICBzdHJ1Y3QgZG1hX2Zl
bmNlICpfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UodW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQo+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkbWFf
ZmVuY2UgKipmZW5jZXMsDQo+PiAtLQ0KPj4gMi4yNS4xDQo+Pg0KPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
